whitelist:
    type: command
    name: wl
    usage: /wl on/off
    description: Used to turn on/off the whitelist.
    permission: oxonscout.whitelist.command
    permission-message: 'You cannot do this!'
    tabcompletion:
      1: on|off
    script:
    - if <context.args.get[1]> == on:
      - narrate '<red>You have turned on the whitelist!'
      - execute as_op 'easywl on'
    - if <context.args.get[1]> == off:
      - narrate '<aqua>You''<aqua>ve turned off the whitelist!'
      - execute as_op 'easywl off'
