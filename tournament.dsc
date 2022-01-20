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
      - if <context.args.get[1]> = match-start:
          - teleport <context.args.get[2]> <location[21,64,2]>
          - teleport <context.args.get[3]> <location[25,64,2]>
          - heal 10 <context.args.get[2]>
          - heal 10 <context.args.get[3]>
          - adjust <context.args.get[2]> gamemode:survival
          - adjust <context.args.get[3]> gamemode:survival
          - give TourneySword to:<context.args.get[2]>
          - give TourneySword to:<context.args.get[3]>
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
             - announce '<&6>[<&b>!<&6>]<&b> <context.damager> has killed <context.entity>!!'
             - teleport <context.damager> <location[21,64,10]>
             - teleport <context.entity> <location[21,64,10]>
ToureySword:
      type: item
      material: iron_sword
      display name: <&4>Trusty Sword
      Lore:
      - <&5>This sword has a long and rich history which we don't have time for now!