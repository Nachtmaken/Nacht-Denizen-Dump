sethome:
      type: command
      name: sethome
      description: Does something
      usage: /sethome <&lt>Does something<&gt>
      script:
      - execute as_player essentials:sethome <context.args.get[1]>
home:
      type: command
      name: home
      description: Does something
      usage: /home <&lt>Does something<&gt>
      script:
      - execute as_player essentials:home <context.args.get[1]>
delhome:
      type: command
      name: delhome
      description: Does something
      usage: /delhome <&lt>Does something<&gt>
      script:
      - execute as_player essentials:delhome <context.args.get[1]>