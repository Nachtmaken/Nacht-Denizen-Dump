pvplobby:
    type: world
    events:
          on player enters pvplobby:
              - execute as_server 'speed 3 <player.name>'
          on player exits pvplobby:
              - execute as_server 'speed 1 <player.name>'
