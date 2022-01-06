warps:
       type: command
       name: warps
       description: Does something
       usage: /warps
       script:
       - inventory open

WarpGUI:
       type: inventory
       inventory: chest
       gui: true
       slots:
       - [] [] [] [] [] [] [] [] []
       - [] [] [] [] [] [] [] [] []
       - [] [] [] [] [] [] [] [] []

Survival:
     type: item:
       type: item
       material: stick
       display name: Stick