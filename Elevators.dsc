dElevators_world:
    type: world
    debug: false
    data:
        # Set to -1 to disable limits
        MaxDistance: -1
        MaxPerChunk: -1
    events:
        ## Bossbar display - player steps on an elevator
        on player steps on *_carpet:
        - if !<context.location.below.has_flag[dElevator]>:
            - stop
        - define elevatorLocation <context.location.below>
        # Get the elevator stack in this location
        - define elevators <[elevatorLocation].chunk.flag[dElevators.<[elevatorLocation].block.x>-<[elevatorLocation].block.z>].alphanumeric>
        # Determine which elevator the player is standing on
        - define index <[elevators].find[<[elevatorLocation].block.y>]>
        # If a bossbar is already shown to the player, update the existing one
        - if <player.bossbar_ids.contains[dElevator-<player.uuid>]>:
            - bossbar update dElevator-<player.uuid> "title:Floor <[index]> of <[elevators].size>" color:RED progress:<[index].div[<[elevators].size>]>
        - else:
            - bossbar create dElevator-<player.uuid> "title:Floor <[index]> of <[elevators].size>" color:RED progress:<[index].div[<[elevators].size>]>
        # Track the player to get their bossbar removed if they step off the elevator
        - flag <player> dElevator
        on player steps on block location_flagged:dElevator:
        - define elevatorLocation <context.location>
        # Get the elevator stack in this location
        - define elevators <[elevatorLocation].chunk.flag[dElevators.<[elevatorLocation].block.x>-<[elevatorLocation].block.z>].alphanumeric>
        # Determine which elevator the player is standing on
        - define index <[elevators].find[<[elevatorLocation].block.y>]>
        # If a bossbar is already shown to the player, update the existing one
        - if <player.bossbar_ids.contains[dElevator-<player.uuid>]>:
            - bossbar update dElevator-<player.uuid> "title:Floor <[index]> of <[elevators].size>" color:RED progress:<[index].div[<[elevators].size>]>
        - else:
            - bossbar create dElevator-<player.uuid> "title:Floor <[index]> of <[elevators].size>" color:RED progress:<[index].div[<[elevators].size>]>
        # Track the player to get their bossbar removed if they step off the elevator
        - flag <player> dElevator
        ## Bossbar removal - player moves off the elevator
        on player steps on block flagged:dElevator:
        # If the player isn't standing on an elevator, or a carpet covered elevator, remove the bossbar
        - if !<context.location.has_flag[dElevator]>:
            - if !<context.location.material.advanced_matches[*_carpet]> && !<context.location.below.has_flag[dElevator]>:
                - bossbar remove dElevator-<player.uuid>
                - flag <player> dElevator:!
        ## Bossbar removal - player disconnects while standing on an elevator
        after player quits:
        # When a player quits, if they still have a bossbar, remove it
        - if <server.current_bossbars.contains[dElevator-<player.uuid>]>:
            - bossbar remove dElevator-<player.uuid>
        ## Player attempts to ascend elevator
        on player jumps:
        # Don't do anything unless the player is standing on an elevator, or an elevator covered by carpet
        - if <player.standing_on.has_flag[dElevator].if_null[false]>:
            - define sourceElevator <player.standing_on>
        - else if <player.standing_on.material.advanced_matches[*_carpet].if_null[false]> && <player.standing_on.below.has_flag[dElevator].if_null[false]>:
            - define sourceElevator <player.standing_on.below[1]>
        - else:
            - stop
        # If there is only one elevator in the stack, don't do anything
        - stop if:<[sourceElevator].chunk.flag[dElevators.<[sourceElevator].x>-<[sourceElevator].z>].size.if_null[1].equals[1]>
        # Get the elevator stack in this location
        - define sorted <[sourceElevator].chunk.flag[dElevators.<[sourceElevator].x>-<[sourceElevator].z>].numerical>
        # Determine which elevator the player is standing on
        - define currentIndex <[sorted].find[<[sourceElevator].y>]>
        # If there are elevators above the current one, move to the next one
        - if <[currentIndex]> != <[sorted].size>:
            # Store the next location so we can check that it's clear
            - define targetLocation <player.location.with_y[<[sorted].get[<[currentIndex].add[1]>].add[1]>]>
            # Check that the distance between the elevators is acceptable
            - if <script.data_key[data.MaxDistance]> > 1 && <[targetLocation].distance[<[sourceElevator]>]> > <script.data_key[data.MaxDistance]>:
                - narrate "<&c>The next elevator is too far away!"
                - stop
            - if <[targetLocation].material.is_occluding.not>:
                - teleport <player> <[targetLocation]>
            - else:
                - narrate "<&c>The next elevator destination is unsafe!"
        ## Player attempts to descend elevator
        on player starts sneaking:
        # Don't do anything unless the player is standing on an elevator, or an elevator covered by carpet
        - if <player.standing_on.has_flag[dElevator].if_null[false]>:
            - define sourceElevator <player.standing_on>
        - else if <player.standing_on.material.advanced_matches[*_carpet].if_null[false]> && <player.standing_on.below.has_flag[dElevator].if_null[false]>:
            - define sourceElevator <player.standing_on.below[1]>
        - else:
            - stop
        # If there is only one elevator in the stack, don't do anything
        - stop if:<[sourceElevator].chunk.flag[dElevators.<[sourceElevator].x>-<[sourceElevator].z>].size.if_null[1].equals[1]>
        # Get the elevator stack in this location
        - define sorted <player.location.chunk.flag[dElevators.<[sourceElevator].x>-<[sourceElevator].z>].numerical>
        # Determine which elevator the player is standing on
        - define currentIndex <[sorted].find[<[sourceElevator].y>]>
        # If there are elevators below this one, move to the previous one
        - if <[currentIndex]> != 1:
            # Store the previous location so we can check that it's clear
            - define targetLocation <player.location.with_y[<[sorted].get[<[currentIndex].sub[1]>].add[1]>]>
            # Check that the distance between the elevators is acceptable
            - if <script.data_key[data.MaxDistance]> > 1 && <[targetLocation].distance[<[sourceElevator]>]> > <script.data_key[data.MaxDistance]>:
                - narrate "<&c>The next elevator is too far away!"
                - stop
            - if <[targetLocation].material.is_occluding.not>:
                - teleport <[targetLocation]>
            - else:
                - narrate "<&c>The previous elevator destination is unsafe!"
        ## Player creates an elevator
        on player places dElevators_item:
        # Test whether the elevator chunk cap has been reached/exceeded
        - if <script.data_key[data.MaxPerChunk].equals[-1].not> && <context.location.chunk.flag[dElevators.count].if_null[0].is_more_than_or_equal_to[<script.data_key[data.MaxPerChunk]>]>:
            - narrate "<&c>This chunk cannot contain any more elevators"
            - determine cancelled
        # Increment the chunk's elevator count
        - flag <context.location.chunk> dElevators.count:++
        # Mark this specific block as an elevator
        - flag <context.location> dElevator
        # Add this block to the elevator index
        - flag <context.location.chunk> dElevators.<context.location.x>-<context.location.z>:->:<context.location.y>
        ## Player destroys an elevator
        on player breaks block location_flagged:dElevator:
        # Unmark this block as an elevator
        - flag <context.location> dElevator:!
        # Remove this block from the elevator index
        - flag <context.location.chunk> dElevators.<context.location.x>-<context.location.z>:<-:<context.location.y>
        # Decrement the chunk elevator count
        - flag <context.location.chunk> dElevators.count:--
        # Check whether we can clean up any of this chunks data
        - if <context.location.chunk.flag[dElevators.<context.location.x>-<context.location.z>].size> == 0:
            - flag <context.location.chunk>  dElevators.<context.location.x>-<context.location.z>:!
        - if <context.location.chunk.flag[dElevators.count]> == 0:
            - flag <context.location.chunk> dElevators:!
        - if <player.gamemode> == CREATIVE:
            - determine NOTHING
        - else:
            - determine dElevators_item
        ## Prevent pushing elevators
        on piston extends:
        - if <context.blocks.filter[has_flag[dElevator]].size> != 0:
            - determine cancelled
        ## Prevent retracting elevators
        on piston retracts:
        - if <context.blocks.filter[has_flag[dElevator]].size> != 0:
            - determine cancelled
dElevators_item:
    type: item
    material: iron_block
    display name: <&f>Elevator Block
    recipes:
        1:
            type: shaped
            output_quantity: 1
            input:
            - air|iron_block|air
            - iron_block|ender_pearl|iron_block
            - air|iron_block|air