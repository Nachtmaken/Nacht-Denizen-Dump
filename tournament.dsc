TournamentCmd:
      type: command
      name: tournament
      description: Does a thing.
      usage: /tournament
      permission: pvptournament.use
      tab compeletions:
        1: match|match-start
      script:
      - if <context.args.get[1]> = match:
          - announce '<&6>[<&b>!<&6>] <&b>Player: <context.args.get[2]> & <context.args.get[3]> have been choosen for the match!'
          - wait 5
          - teleport <context.args.get[2]> <location[21,64,21,1,1,world]>
          - teleport <context.args.get[3]> <location[21,64,21,0,0,world]>
          - execute as_op 'essentials:heal <context.args.get[2]> 10'
          - execute as_op 'essentials:heal <context.args.get[3]> 10'
          - execute as_op 'essentials:gm survival <context.args.get[2]>'
          - execute as_op 'essentials:gm survival <context.args.get[3]>'
          - give ToureySword player:<context.args.get[2]>
          - give ToureySword player:<context.args.get[3]>
          - give cooked_beef quantity:64 player:<context.args.get[2]>
          - give cooked_beef quantity:64 player:<context.args.get[3]>
          - give ToureyShield player:<context.args.get[2]>
          - give ToureyShield player:<context.args.get[3]>
          - announce '<&6>[<&b>!<&6>]<&b> The Match will start on 3!'
          - announce '1'
          - wait 1
          - announce '2'
          - wait 1
          - announce '3, GGGGGOOOOO!!'
TournamentListeners:
      type: world
      events:
          on player death:
             - announce '<&6>[<&b>!<&6>]<&b> <context.damager.name> has killed <context.entity.name>!!'
             - execute as_op 'essentials:tp 21 64 10 <context.damager.name>'
             - execute as_op 'essentials:tp 21 64 10 <context.entity.name>'
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