startupkit:
       type: command
       name: newbie
       description: Give a new player the first things they need to get going in the world
       usage: /newbie
       tab completion:
          1: <server.online_players.parse[name]>
       script:
       - give campfire quantity:1 to:<context.args.get[1]>
       - give wooden_sword to:<context.args.get[1]>
       - give wooden_axe to:<context.args.get[1]>
       - give wooden_pickaxe to:<context.args.get[1]>
       - give wooden_shovel to:<context.args.get[1]>
       - give bread quantity:16 to:<context.args.get[1]>
       - give golden_shovel quantity:1 to:<context.args.get[1]>