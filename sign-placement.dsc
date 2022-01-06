sign_listener:
     type: world
     events:
          on sign being built:
          - announce 'Player: <aqua><player.name> has placed down a sign @ <player.location>' to_permission:sign.announce
          - discordmessage channel: reply: '<player.name> has placed down a sign @ <player.location>!'
