herogui:
        type: inventory
        inventory: chest
        gui: true
        slots:
        - [] [] [] [] [] [] [] [] []
apprenticeitem:
        type: item
        material: stick
        display name: <&5>Apprentice Mage
        lore:
        - <&o>The first mage rank before you can become a master mage!

herolisteners:
      type: world
      events:
        on player clicks item in inventory: