tournament:
    type: command
    name: tournament
    description: A command that let's you start a tournament in an area you specify
    usage: /tournament
    permission: example.permission.use
    permission message: <&4>You don't have permission to do that.
    tab-completions:
        1: prepare|match|announce
    script:
    - if <context.args.get[1]> = prepare:
        - adjust <context.args.get[3]> gamemode:survival
        - adjust <context.args.get[4]> gamemode:survival
        - wait 5
        - heal <context.args.get[3]>
        - heal <context.args.get[4]>
    - if <context.args.get[1]> = match:
        - teleport <context.args.get[3]> <location[200,200,200]>
        - teleport <context.args.get[4]> <location[210,200,210]>
        - announce '<&6>The match between <&b><context.args.get[3]> and <&b><context.args.get[4]> <&6>is starting now!'
    - if <context.args.get[1]> = announce:
        - announce '<&b>Welcome to the tournament! The matches will be conducted by <player.name>!'