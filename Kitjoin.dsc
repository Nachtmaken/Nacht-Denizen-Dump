NewbieJoin:
     type: world
     events:
         on player join:
          - if !<player.has_permission[oxon.newbie]>:
             - execute as_server 'kit newbie <player.name>'
             - execute as_server 'lp user <player.name> permission set oxon.newbie'
          - else:
            - narrate '&bWelcome back to Survival!'