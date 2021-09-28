welcome:
    type: command
    name: welcome
    usage: /welcome "playername"
    description: A command that welcomes a player to the server!
    permission: oxonscout.welcome.command
    permission-message: <red><player.name> You don't have permission to do that command!
    script:
    - bungee hub|minigame1|minigame2|survival|creative:
      - announce "<gold> Welcome to the server!<white> <context.args.get[1]> <aqua> You can use /warps to get around the server! Remember to be kind and follow the scout law!"
      - narrate "Welcome to the server: <context.args.get[1]>, have a wonderful, marvelous day!"