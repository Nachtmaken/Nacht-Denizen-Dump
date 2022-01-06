NewbieShortCut:
       type: command
       name: newbie
       description: Gives New players the correct kit for them.
       usage: /newbie <&lt>Does something<&gt>
       permission: oxonscout.newbie.command
       permission message: <&4>No Permission.
       tabcompletion:
        1: <server.online_players.parse[name]>
       script:
       - execute as_server 'kit newbie <context.args.get[2]>'