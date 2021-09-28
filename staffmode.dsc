Staffmode:
    type: command
    name: staffmode
    usage: /staffmode on/off
    description: Turns the staff invisible and into spectator
    permission: oxonscout.staffmode.command
    permission-message: <red>Sorry, <player.name>, you don't have permission to do that!
    tab compeletion:
      1: on|off
    script:
    - if <context.args.get[1]> == on:
      - adjust <player> gamemode:spectator
      - invisible <player> state:true
      - narrate "<gold>Your now in Staffmode!"
    - if <context.args.get[1]> == off:
      - adjust <player> gamemode:survival
      - invisible <player> state:false
      - narrate "<gold> Your no longer in staffmode!"

