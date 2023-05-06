SettingsGUI:
      type: inventory
      title: <&6>Survival Settings Menu
      gui: true
      inventory: chest
      slots:
      - [] [] [SettingsItem1] [] [] [] [SettingsItem2] [] []

SettingsItem1:
      type: item
      display name: Side Board Toggle
      material: oak_sign
      lore:
      - <empty>
      - <&b><&o>Click this to turn off/on the side board.
SettingsItem2:
      type: item
      display name: Bossbar Toggle
      material: iron_bars
      lore:
      - <empty>
      - <&c><&o>Click this to turn off/on the Top Info Bar.

SettingsCommand:
      type: command
      name: settings
      alias: setting
      description: Shows Settings for Survival
      usage: /settings
      script:
      - inventory open destination:SettingsGUI

SettingsListeners:
    type: world
    events:
      on player clicks SettingsItem1 in SettingsGUI:
        - execute as_player 'sb toggle'
        - narrate '<&6>[<&b>Scoutlink Settings<&6>]<&b> Your Sideboard has been toggled.'
        - stop
      on player clicks SettingsItem2 in SettingsGUI:
        - execute as_player 'ub toggle'
        - narrate '<&6>[<&b>Scoutlink Settings<&6>]<&b> Your top bar has been toggled.'
        - stop