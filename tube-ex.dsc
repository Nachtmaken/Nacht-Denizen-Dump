warp:
    type: command
    name: warp
    usage: /warp "location"
    description: Teleports you to a pre-set location for a price.
    tab completions:
        1: spawn|endportal|funhouse|netherfortress|endcity
    script:
    - if <context.args.get[1]> = spawn:
        - narrate '<&b>Are you sure you want to teleport to the <context.args.get[1]>? Reply with <&c>/teleport spawn <&b>confirm if your happy to pay.'
        - if <context.args.get[2]> = confirm:
          - money take quantity: 20
          - execute as_op 'tppos 200 200 200'
          - narrate <player> '<&6>Welcome to <context.args.get[1]>!<&b> Have a fun trip!'
    - if <context.args.get[1]> = endportal:
        - narrate '<&b>Are you sure you want to teleport to the <context.args.get[1]>? Reply with <&c>/teleport spawn <&b>confirm if your happy to pay.'
        - if <context.args.get[2]> = confirm:
          - money take quantity: 20
          - execute as_op 'tppos 300 500 600'
          - narrate <player> '<&6>Welcome to <context.args.get[1]>!<&b> Have a fun trip!'