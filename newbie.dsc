NewbieShortCut:
       type: command
       name: newbie
       description: Gives New players the correct kit for them.
       usage: /newbie <&lt>Does something<&gt>
       permission: oxonscout.newbie.command
       permission message: <&4>No Permission.
       tabcompletion:
        1: <server.online_players.parse[name]>
       script:
       - if <server.match_player[<context.args.get[1]>].has_permission[oxon.newbie.first].not>:
           - give <server.match_player[<context.args.get[1]>]> golden_shovel
           - give <server.match_player[<context.args.get[1]>]> cooked_beef quantity:24
           - give <server.match_player[<context.args.get[1]>]> wooden_axe
           - give <server.match_player[<context.args.get[1]>]> wooden_sword
           - give <server.match_player[<context.args.get[1]>]> wooden_pickaxe
           - give <server.match_player[<context.args.get[1]>]> wooden_shovel
           - give <server.match_player[<context.args.get[1]>]> campfire
           - give <server.match_player[<context.args.get[1]>]> wheat_seeds quantity:15
           - give <server.match_player[<context.args.get[1]>]> leather_boots
NewbieWorld:
       type: world
       events:
         on player joins:
         - if <player.has_permission[oxon.newbie.first].not>:
           - give golden_shovel
           - give cooked_beef quantity:24
           - give wooden_axe
           - give wooden_sword
           - give wooden_pickaxe
           - give wooden_shovel
           - give campfire
           - give wheat_seeds quantity:15
           - give leather_boots