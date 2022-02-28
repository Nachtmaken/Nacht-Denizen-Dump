tournamnetcommand:
        type: command
        name: tournament
        description: This comamnd will do something possibly amazing
        usage: /tournament
        script:
        - if <context.args.get[1]> = match:
          - announce "<&6>[<&b>!<&6>] <&b>Players: <context.args.get[2]> & <context.args.get[3]> are having a match in the arena now"
          - wait 5
          - teleport <context.args.get[2]> <location[0,0,0,1,1,world]>
          - teleport <context.args.get[3]> <location[0,0,0,1,1,world]>
          - execute as_op 'essentials:heal 10 <context.args.get[2]>'
          - execute as_op 'essentials:heal 10 <context.args.get[3]>'
          - execute as_op 'essentials:gm survival <context.args.get[2]>'
          - execute as_op 'essentials:gm survival <context.args.get[3]>'
          - give ToureySword player:<context.args.get[2]>
          - give ToureySword player:<context.args.get[3]>
          - give cooked_beef quantity:64 player:<context.args.get[2]>
          - give cooked_beef quantity:64 player:<context.args.get[3]>
          - give ToureyShield player:<context.args.get[2]>
          - give ToureyShield player:<context.args.get[3]>
          - announce '<&6>[<&b>!<&6>]<&b> The Match will start on 3!'
          - announce '<&6>[<&b>!<&6>]<&b> 1'
          - wait 1
          - announce '<&6>[<&b>!<&6>]<&b> 2'
          - wait 1
          - announce '<&6>[<&b>!<&6>]<&b> 3, GGGGGOOOOO!!'
tournamentlisteners:
      type: world
      events:
        on player death:
          - announce '<&6>[<&b>!<&6>]<&b> <context.damager.name> has killed <context.entity.name>!!'
          - teleport <context.damager.name> <location[0,0,0,1,1,world]>
          - teleport <context.entity.name> <location[0,0,0,1,1,world]>
ToureySword:
      type: item
      material: iron_sword
      display name: <&4>Trusty Sword
      Lore:
      - <&5>This sword has a long and rich history which we don't have time for now!
ToureyShield:
      type: item
      material: shield
      display name: <&4>Trusty Shield
      Lore:
      - <&5>This shield has seen many-er wars now it is yours to use!