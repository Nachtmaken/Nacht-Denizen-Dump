NavigationGUI:
      type: inventory
      inventory: chest
      gui: true
      size: 9
      slots:
      - [] [] [i@SurvivalSpawn] [] [i@SurvivalHome] [] [i@SurvivalShops] [] []

SurvivalHome:
       type: item
       material: red_bed
       display name: <&b>Survival Home
       lore:
       - This item takes you back to your set home
SurvivalSpawn:
       type: item
       material: bricks
       display name: <&c>Survival Spawn
       lore:
       - This item takes you back to the Survival Spawn
SurvivalShops:
       type: item
       material: cooked_beef
       display name: <&c>Survival Shop
       lore:
       - This item takes you back to the Survival Shops
SurvivalNavigationListeners:
     type: world
     events:
        on player clicks SurvivalHome in NavigationGUI:
            - execute as_player "home bed"
            - inventory close NavigationGUI
        on player clicks SurvivalSpawn in NavigationGUI:
            - execute as_player "warp survivalspawn"
            - inventory close NavigationGUI
        on player clicks SurvivalShops in NavigationGUI:
            - execute as_player "warp survival"
            - inventory close NavigationGUI
SurvivalNavigationCommand:
       type: command
       name: survival
       description: This command allows the player to quickly navigate survival!
       usage: /survival
       aliases:
       - survivalnavigation
       - navigation
       - sn
       - survnav
       - navigate
       - nav
       script:
       - inventory open d:in@NavigationGUI