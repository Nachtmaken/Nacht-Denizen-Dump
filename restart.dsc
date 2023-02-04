Restart-World-Checks:
      type: world
      events:
        on server start:
          - wait 1m
          - execute as_server 'ee ex announce '<&6>[<&b>!<&6>]<&b> <&l>Server: Arenas is <&a>online!''
        shutdown:
          - execute as_server 'ee ex announce '<&6>[<&b>!<&6>]<&b> <&l>Server: Arenas is <&4>shutting down!''
RestartCMD:
      type: command
      permission: tlb.restart
      name: saferestart
      usage: /saferestart
      description: Why
      script:
      - title 'title:<&4>Server Restart' 'subtitle:<&o><&b>Server Restarting in 3 mins!' targets:<server.online_players>
      - execute as_server 'ee ex announce "<&6>[<&b>!<&6>]<&b> <&l>Arenas Server is Restarting in 3 mins!"'
      - wait 2m
      - title 'title:<&4>Server Restart' 'subtitle:<&o><&b>Server Restarting in 1 min!' targets:<server.online_players>
      - wait 1m
      - title "title:<&4>Server Restarting" targets:<server.online_players>
      - execute as_server 'ee ex announce "<&6>[<&b>!<&6>]<&b> <&l>Arenas Server Restarting!"'
      - wait 5s
      - adjust server restart