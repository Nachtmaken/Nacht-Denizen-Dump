flying_cookie:
    type: world
    events:
    # When a player consumes a flyingcookie custom item
        after player consumes flyingcookie:
        # if player has flag "is_flying" give back cookie and removes hunger gained
            - if <player.has_flag[is_flying]>:
                - narrate "You're already using a Flying Cookie!"
                - feed amount:-2
                - give flyingcookie
            - else:
                # Sets flag to say player is flying
                - flag player is_flying
                - narrate "Enjoy 30 seconds of Flight!"
                # Allows player flight for 30 seconds
                - adjust <player> can_fly:true
                - adjust <player> flying:true
                - wait 20s
                - narrate "10 seconds remaining..."
                - wait 7s
                - narrate "3 seconds..."
                - wait 1s
                - narrate "2 seconds..."
                - wait 1s
                - narrate "1 second!"
                - wait 1s
                # Removes flight abilities says player is no longer flying
                - adjust <player> can_fly:false
                - adjust <player> flying:false
                - flag player is_flying:!


give_cookie:
    type: task
    script:
        - give flyingcookie
        - narrate "Here is your cookie <player.name>!"
        - flag player is_flying:!

flyingcookie:
    type: item
    material: cookie
    display name: <&b> Flying Cookie

    lore:
    - Flying Cookie!

    enchantments:
    - loyalty:2

    recipes:
        1:
            type: shaped
            input:
            - diamond|diamond|diamond
            - diamond|cookie|diamond
            - diamond|diamond|diamond