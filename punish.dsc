PunishGUI:
       type: inventory
       inventory: chest
       title: Punishment Menu
       gui: true
       size: 18
       slots:
       - [light_blue_stained_glass_pane] [Punish1] [light_blue_stained_glass_pane] [light_blue_stained_glass_pane] [Punish2] [light_blue_stained_glass_pane] [light_blue_stained_glass_pane] [Punish3] [light_blue_stained_glass_pane]
       - [light_blue_stained_glass_pane] [Punish4] [light_blue_stained_glass_pane] [light_blue_stained_glass_pane] [Punish5] [light_blue_stained_glass_pane] [light_blue_stained_glass_pane] [Punish6] [light_blue_stained_glass_pane]
Punish1:
       type: item
       material: barrier
       display name: <&6>Misconduct
       lore:
       - <&5> Warn the target for misconduct.
Punish2:
       type: item
       material: cod
       display name: <&6>Spam
       lore:
       - <&5> Warn the target for spam.
Punish3:
       type: item
       material: repeater
       display name: <&6>Hack
       lore:
       - <&5> Warn the target for hack.
Punish4:
       type: item
       material: barrier
       display name: <&6>Major Abuse
       lore:
       - <&5> Warn the target for Major Abuse.
Punish5:
       type: item
       material: grass_block
       display name: <&6>Grief
       lore:
       - <&5> Warn the target for grief.
Punish6:
       type: item
       material: structure_block
       display name: <&6>Ban Evade
       lore:
       - <&5> Warn the target for Ban Evade.
PunishmentListeners:
      type: world
      events:
        on player clicks Punish1 in PunishGUI:
          - execute as_player 'warn misconduct <context.args.get[2]> you have been warned'
        on player clicks Punish2 in PunishGUI:
          - execute as_player 'warn spam <context.args.get[2]> you have been warned'
        on player clicks Punish3 in PunishGUI:
          - execute as_player 'warn hack <context.args.get[2]> you have been warned'
        on player clicks Punish4 in PunishGUI:
          - execute as_player 'warn majorabuse <context.args.get[2]> you have been warned'
        on player clicks Punish5 in PunishGUI:
          - execute as_player 'warn grief <context.args.get[2]> you have been warned'
        on player clicks Punish6 in PunishGUI:
          - execute as_player 'warn banevade <context.args.get[2]> you have been warned'