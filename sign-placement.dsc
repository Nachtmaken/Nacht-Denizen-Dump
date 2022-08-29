sign_listener:
     type: world
     events:
          on player changes sign:
          - announce 'Player: <aqua><player.name> has placed down a sign @ <context.location> containing: <&6><context.new.formatted>' to_ops
