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
            - execute as_player 'warps'
          on player joins:
            - give WarpCompass