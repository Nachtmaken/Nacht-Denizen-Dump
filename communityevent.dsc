shortcut:
    type: command
    name: event
    description: An command to for community to run events
    usage: /event "sub-command" "playername"
    tab completions:
     1: prophunt|effect|paste
     2: <server.online_players.parse[name]>
    aliases:
    - communityevent
    - community
    - vent
    - british
    - ev
    permission: tlb.event.commands
    permission message: '<&4>You do not have permission to do that!'
    script:
    - if <context.args.get[1]> == prophunt:
      - execute as_server 'lp user <context.args.get[2]> permission settemp essentials.near.exclude 1h server=arenas true'
      - narrate '<&b><context.args.get[2]> has been removed from the near command!'
    - if <context.args.get[1]> == effect:
      - adjust <context.args.get[2]> remove_effects
      - narrate '<&b><context.args.get[2]> has had their effects removed!'
    - if <context.args.get[1]> == paste:
      - narrate '<&6>This command is still being developed blame Nachtmaken for this :)'

