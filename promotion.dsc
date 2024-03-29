Promotion:
        type: command
        name: promotion
        description: This command promotes people
        usage: /promotion
        permission: oxonscout.promotion
        aliases:
        - promote
        - builder
        - make
        tab completions:
            1: supporter|moderator|admin|builder
            2: <server.online_players.parse[name]>
        script:
        - if <context.args.get[1]> = supporter:
            - if <player.has_permission[oxonscout.promote.supporter]>:
                - execute as_server 'lp user <context.args.get[2]> parent set supporter'
                - narrate '<&b>Player: <context.args.get[2]> has been promoted to supporter'
        - if <context.args.get[1]> = moderator:
            - if <player.has_permission[oxonscout.promote.moderator]>:
                - execute as_server 'lp user <context.args.get[2]> parent set moderator'
                - narrate '<&b>Player: <context.args.get[2]> has been promoted to Moderator'
        - if <context.args.get[1]> = admin:
            - if <player.has_permission[oxonscout.promote.admin]>:
                - execute as_server 'lp user <context.args.get[2]> parent set admin'
                - narrate '<&b>Player: <context.args.get[2]> has been promoted to Admin'
        - if <context.args.get[1]> = builder:
            - if <player.has_permission[oxonscout.promote.builder]>:
                - execute as_server 'lp user <context.args.get[2]> parent add builder'
                - narrate '<&b>Player: <context.args.get[2]> has been promoted to Builder'