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
          - execute as_player 'litebans:warn <player.flag[playername]> misconduct (Misconduct) <player.flag[reason]>'
          - inventory close d:PunishGUI
          - flag server warning:Misconduct
          - run DiscordWarningEmbed
        on player clicks Punish2 in PunishGUI:
          - execute as_player 'litebans:warn <player.flag[playername]> spam (Spam) <player.flag[reason]>'
          - inventory close d:PunishGUI
          - flag server warning:Spam
          - run DiscordWarningEmbed
        on player clicks Punish3 in PunishGUI:
          - execute as_player 'litebans:warn <player.flag[playername]> hacks (Hacks) <player.flag[reason]>'
          - inventory close d:PunishGUI
          - flag server warning:Hacks
          - run DiscordWarningEmbed
        on player clicks Punish4 in PunishGUI:
          - execute as_player 'litebans:warn <player.flag[playername]> majorabuse (Major-Abuse) <player.flag[reason]>'
          - inventory close d:PunishGUI
          - flag server warning:Major-Abuse
          - run DiscordWarningEmbed
        on player clicks Punish5 in PunishGUI:
          - execute as_player 'litebans:warn <player.flag[playername]> grief (Grief) <player.flag[reason]>'
          - inventory close d:PunishGUI
          - flag server warning:Grief
          - run DiscordWarningEmbed
        on player clicks Punish6 in PunishGUI:
          - execute as_player 'litebans:warn <player.flag[playername]> banevade (Ban-evade) <player.flag[reason]>'
          - inventory close d:PunishGUI
          - flag server warning:Ban-Evade
          - run DiscordWarningEmbed
PunishCommand:
        type: command
        name: punish
        description: Does something
        usage: /punish <&lt>Does something<&gt>
        permission: oxonscout.punish
        tabcompletions:
          1: <server.online_players.parse[name]>
          2: (note)
        permission message: <&4>You don't have permission to do that.
        script:
        - inventory open d:PunishGUI
        - flag <player> playername:<context.args.get[1]>
        - flag <player> sender:<player.name>
        - flag <player> reason:<context.args.get[2].to[last].separated_by[<&sp>].formatted>
DiscordWarningEmbed:
    type: task
    script:
    - discordconnect id:bot2 token:<secret[my_bot_token]>
    - define embed "<discord_embed.with_map[title=Warning Issued;description= Issuer: <player.flag[sender]>. Player Warned: <player.flag[playername]> Warning: <server.flag[warning]> Reason: <player.flag[reason]>;timestamp=<util.time_now>;color=#00FFFF]>"
    - discordmessage id:bot2 channel:937737230213079100 <[embed]>
