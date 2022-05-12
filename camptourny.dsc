tournamentcmd:
        type: command
        name: match
        description: This does a match command.
        usage: /match
        script:
        - if <context.args.get[1]> = match:
            - announce "Player: <context.args.get[2]> is fighting <context.args.get[3]>!"
            - wait 2
            - teleport <context.args.get[2]> <location[,0,0,0,0,world]>
            - teleport <context.args.get[3]> <location[0,0,0,0,0,world]>
            - execute as_op 'essentials:heal <context.args.get[2]> 10'
            - execute as_op 'essentials:heal <context.args.get[3]> 10'
          #sets the playes gamemode to survival
            - execute as_op 'essentials:gm survival <context.args.get[2]>'
            - execute as_op 'essentials:gm survival <context.args.get[3]>'
            - give ToureySword player:<context.args.get[2]>
            - give ToureySword player:<context.args.get[3]>
            - give cooked_beef quantity:64 player:<context.args.get[2]>
            - give cooked_beef quantity:64 player:<context.args.get[3]>
            - give ToureyShield player:<context.args.get[2]>
            - give ToureyShield player:<context.args.get[3]>
            - announce "The game will start now!"
            - announce "3"
            - wait 1
            - announce "2"
            - wait 1
            - announce "1"
            - announce "GOOOO!"
tourneysword:
        type: item
        material: iron_sword
        display name: Trusty Sword
        lore:
        - <&5><&o>This sword has a long and dark past.
        enchantments:
        - knockback:1
TourneyShield:
        type: item
        material: shield
        display name: Not Special Shield.
        lore:
        - <&b><&o>A really awful shield. <&3>But hey, you don't have much else.
TournamentListeners:
      type: world
      events:
      #This shows to the players and checks for wether someone dies.
          on player death:
             - announce '<&6>[<&b>!<&6>]<&b> <context.damager.name> has killed <context.entity.name>!!'
             - teleport <context.damager.name> <location[21,64,21,1,1,world]>
             - teleport <context.entity.name> <location[21,64,21,1,1,world]>