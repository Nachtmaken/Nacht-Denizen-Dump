Staffmode:
    type: command
    name: staffmode
    usage: /staffmode
    description: Turns the staff invisible and into spectator
    permission: oxonscout.staffmode.command
    permission-message: <red>Sorry, <player.name>, you don't have permission to do that!
    script:
    - if <player.has_permission[oxonscout.staffmode.on].not>:
      - adjust <player> gamemode:spectator
      - invisible <player> state:true
      - narrate "<gold>Your now in Staffmode!"
      - if <player.in_group[helper]>:
        - flag <player> stafflocation:<player.location>
      - execute as_server 'lp user <player.uuid> permission set oxonscout.staffmode.on'
    - if <player.has_permission[oxonscout.staffmode.on]>:
      - adjust <player> gamemode:survival
      - invisible <player> state:false
      - if <player.in_group[helper]>:
        - teleport <player.flag[stafflocation]>
      - narrate "<gold> Your no longer in staffmode!"

