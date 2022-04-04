netherportal:
      type: world
      events:
        on player enters portal:
            - inventory open destination:PortalMenu
PortalMenu:
        type: inventory
        inventory: chest
        gui: true
        slots:
        - [MagicGlass] [MagicGlass] [PortalNether] [MagicGlass] [MagicGlass] [MagicGlass] [PortalEnd] [MagicGlass] [MagicGlass]
PortalNether:
        type: item
        material: purple_concrete
        display name: <&5>Nether Portal
PortalEnd:
        type: item
        material: black_concrete
        display name: <&2>End Portal
MagicGlass:
        type: item
        material: blue_stained_glass_pane
        display name: <&b>Magic Glass
        lore:
        - <&o>This doesn't do anything except exist.