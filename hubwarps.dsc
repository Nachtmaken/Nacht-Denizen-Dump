WarpCompass:
      type: item
      material: clock
      display name: <&b>Warps Compass
      lore:
      - <&6>This Compass will solve all your server transport problems...
CompassListeners:
      type: world
      events:
          on player clicks block:
            - execute as_player 'commandpanels:cp panel-1'
          on player joins:
            - give WarpCompass
Warpcommand:
    type: command
    name: warps
    description: warps
    usage: /warps
    script:
    - execute as_player 'commandpanels:cp panel-1'