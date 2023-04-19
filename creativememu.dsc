creativeGUI:
      type: inventory
      inventory: chest
      title: <&b>ScoutLink Creative Menu
      gui: true
      size: 9
      slots:
      - [] [] [PlotHome] [] [NewPlot] [] [CreativeSpawn] [] []

PlotHome:
       type: item
       material: red_bed
       display name: <&b>Plot Home
       lore:
       - This item takes you back to your plot
CreativeSpawn:
       type: item
       material: bricks
       display name: <&6>Creative Spawn
       lore:
       - This item takes you back to the Creative Spawn
NewPlot:
       type: item
       material: cooked_beef
       display name: <&e>New Plot
       lore:
       - This item gets you a new plot!
SurvivalNavigationListeners:
     type: world
     events:
        on player clicks PlotHome in creativeGUI:
            - execute as_player "p home"
            - inventory close NavigationGUI
        on player clicks NewPlot in creativeGUI:
            - execute as_player "p auto"
            - inventory close NavigationGUI
        on player clicks CreativeSpawn in creativeGUI:
            - execute as_player "spawn"
            - inventory close NavigationGUI
CreativeCommand:
       type: command
       name: menu
       description: This command allows the player to quickly navigate survival!
       usage: /menu
       aliases:
       - creative
       - create
       - men
       - claim
       script:
       - inventory open d:creativeGUI
CreativeMenu:
      type: world
      events:
         on player join:
         - wait 5
         - inventory open d:creativeGUI
