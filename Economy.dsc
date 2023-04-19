EconomyListeners:
      type: world
      debug: false
      events:
        on player logs in:
        - if <player.flag[BeenGivenStartFund]> != true:
          - wait 10s
          - money give players:<player> quantity:500
          - narrate '<&6>[<&b>Scoutlink Economy<&6>]<&b> You<&sq>ve been given your starting fund on the server of 500$. To get help on money use <&6>/moneyhelp'
          - flag <player> BeenGivenStartFund:true
MoneyHelp:
      type: command
      name: moneyhelp
      description: yes
      usage: /moneyhelp
      aliases:
        - helpmoney
        - hmoney
        - moneyhow
        - howmoney
        - nachtisthebestdeveloper
      script:
       - narrate '<&6>[<&b>Scoutlink Economy<&6>]<&b> Here are some commands to help you earn money!'
       - narrate '<&b>-------------------------------------------'
       - narrate '<&b>1: Use <&6>/ah sell amount<&b> to sell the item that<&sq>s in your hand!'
       - narrate '<&b>2: Use <&6>/jobs<&b> to get yourself a job on the server these reward you for doing certain tasks!'
       - narrate '<&b>3: Make sure to sell things on the auction house people actually want! Give yourself something unique and become the best to earn great money!'
Jobsshortcut:
      type: command
      name: jobs
      description: yes
      usage: /jobs
      script:
      - execute as_player 'jobs:jobs browse'
StartMoneyCommand:
      type: command
      name: newplayercash
      description: yes
      usage: /newplayercash
      permission: scoutlink.newplayercash
      tab completions:
        1: <server.online_players.parse[name]>|fix
        2: <server.online_players.parse[name]>
      script:
      - define playername <server.match_player[<context.args.get[1]>]>
      - if <context.args.get[1]> == fix:
        - flag <player[<server.match_player[<context.args.get[2]>]>]> BeenGivenStartFund:!
      - if <player[<[playername]>].flag[BeenGivenStartFund]> != true:
          - money give players:<[playername]> quantity:500
          - narrate '<&6>[<&b>Scoutlink Economy<&6>]<&b> You<&sq>ve been given your starting fund on the server of 500$. To get help on money use <&6>/moneyhelp'
          - flag <player[<[playername]>]> BeenGivenStartFund:true
      - else:
        - narrate '<&6>[<&b>Scoutlink Economy<&6>]<&b> This player has already been given their starting cash.'