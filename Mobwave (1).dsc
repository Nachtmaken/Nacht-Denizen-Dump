/mobwave:
    type: command
    name: mobwave
    description: Spawns waves of mobs
    usage: /mobwave [wave1/wave2/wave3]
    permission: tlb.mobwave.command
    permission message: Sorry, <player.name>, you can't use this command because you don't have permission to do that!
    aliases:
     - mob
     - arena
     - wave
     - british
    tab completions:
      1: announce|wave1|wave2|wave3|wave4|wave5|wave6|wave7|wave8|raid|undead|nether
      default: StopTyping
    script:
    - if !<player.has_permission[tlb.mobwave.cooldown]>:
      - if <context.args.get[1]> == announce:
          - execute as_server 'vbroadcast Mobs are invading at /warp dragon! Get down here and help fight off the hoard from Agatha!'
          - execute as_server 'lp user <player.name> permission settemp tlb.mobwave.cooldown true 2m'
      - if <context.args.get[1]> == wave1:
          - spawn ravager|ravager|ravager|ravager|ravager|ravager|ravager|ravager|ravager|ravager|ravager <location[-56,61,-40,0,0,dragon]>
          - announce "<&6><&l>Mob wave 1 incoming! (/warp dragon)"
          - execute as_server 'lp user <player.name> permission settemp tlb.mobwave.cooldown true 2m'
      - if <context.args.get[1]> == wave2:
          - spawn witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch <location[-56,61,-40,0,0,dragon]>
          - announce "<&6><&l>Mob wave 2 incoming! (/warp dragon)"
          - execute as_server 'lp user <player.name> permission settemp tlb.mobwave.cooldown true 2m'
      - if <context.args.get[1]> == wave3:
          - spawn witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch <location[26,59,-50,0,0,dragon]>
          - spawn vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex <location[-48,59,30,0,0,dragon]>
          - spawn vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex <location[-48,59,30,0,0,dragon]>
          - announce "<&6><&l>Mob wave 3 incoming! (/warp dragon)"
          - execute as_server 'lp user <player.name> permission settemp tlb.mobwave.cooldown true 2m'
      - if <context.args.get[1]> == wave4:
          - spawn blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze <location[51,60,14,0,0,dragon]>
          - spawn illusioner|illusioner|illusioner|illusioner|cave_spider|cave_spider|cave_spider|cave_spider|cave_spider <location[51,60,14,0,0,dragon]>
          - spawn vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex <location[0,70,0,0,0,dragon]>
          - spawn vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex <location[0,70,0,0,0,dragon]>
          - announce "<&6><&l>Mob wave 4 incoming! (/warp dragon)"
          - execute as_server 'lp user <player.name> permission settemp tlb.mobwave.cooldown true 2m'
      - if <context.args.get[1]> == wave5:
          - spawn witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch <location[26,59,-50,0,0,dragon]>
          - spawn blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze <location[26,59,-50,0,0,dragon]>
          - spawn ravager|ravager|ravager|ravager|ravager|ravager|ravager|ravager|ravager|ravager|ravager <location[-56,61,-40,0,0,dragon]>
          - announce "<&6><&l>Mob wave 5 incoming! (/warp dragon)"
          - execute as_server 'lp user <player.name> permission settemp tlb.mobwave.cooldown true 2m'
      - if <context.args.get[1]> == wave6:
          - spawn witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch <location[26,59,-50,0,0,dragon]>
          - spawn blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze <location[26,59,-50,0,0,dragon]>
          - spawn vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex <location[0,70,0,0,0,dragon]>
          - announce "<&6><&l>Mob wave 6 incoming! (/warp dragon)"
          - execute as_server 'lp user <player.name> permission settemp tlb.mobwave.cooldown true 2m'
      - if <context.args.get[1]> == wave7:
          - spawn ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast <location[-56,61,-40,0,0,dragon]>
          - spawn illusioner|illusioner|illusioner|illusioner|cave_spider|cave_spider|cave_spider|cave_spider|cave_spider|cave_spider <location[51,60,14,0,0,dragon]>
          - spawn ravager|ravager|ravager|ravager|cave_spider|cave_spider|cave_spider <location[51,60,14,0,0,dragon]>
          - spawn witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch <location[-56,61,-40,0,0,dragon]>
          - spawn witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch|witch <location[26,59,-50,0,0,dragon]>
          - spawn wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton <location[-56,61,-40,0,0,dragon]>
          - spawn blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze <location[7,59,59,0,0,dragon]>
          - announce "<&6><&l>Mob wave 7 incoming! (/warp dragon)"
          - execute as_server 'lp user <player.name> permission settemp tlb.mobwave.cooldown true 2m'
      - if <context.args.get[1]> == wave8:
          - spawn wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton <location[-56,61,-40,0,0,dragon]>
          - spawn illusioner|illusioner|illusioner|illusioner|cave_spider|cave_spider|cave_spider <location[51,60,14,0,0,dragon]>
          - spawn wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton <location[-56,61,-40,0,0,dragon]>
          - spawn wither <location[-48,59,30,0,0,dragon]>
          - spawn vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex|vex <location[30,75,-12,0,0,dragon]>
          - spawn blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze|blaze <location[7,59,59,0,0,dragon]>
          - announce "<&4><&l>Prepare for the Wither Invasion! (/warp dragon)"
          - execute as_server 'lp user <player.name> permission settemp tlb.mobwave.cooldown true 2m'
      - if <context.args.get[1]> == raid:
         - spawn evoker|evoker|evoker|evoker|evoker|evoker|evoker|evoker|evoker|evoker|evoker|evoker|evoker|evoker|evoker|evoker|evoker|evoker|evoker|evoker|evoker|evoker|evoker|evoker|evoker|evoker|evoker|evoker|evoker|evoker|evoker|evoker|evoker <location[7,59,59,0,0,dragon]>
         - spawn ravenger|ravenger|ravenger|ravenger|ravenger|ravenger|ravenger|ravenger|ravenger|ravenger|ravenger|ravenger|ravenger|ravenger|ravenger|ravenger|ravenger|ravenger|ravenger|ravenger|ravenger|ravenger|ravenger|ravenger|ravenger <location[-56,61,-40,0,0,dragon]>
         - spawn vindicator|vindicator|vindicator|vindicator|vindicator|vindicator|vindicator|vindicator|vindicator|vindicator|vindicator|vindicator|vindicator|vindicator|vindicator|vindicator|vindicator|vindicator|vindicator|vindicator <location[-2,61,28,0,0,dragon]>
         - spawn pillager|pillager|pillager|pillager|pillager|pillager|pillager|pillager|pillager|pillager|pillager|pillager|pillager|pillager|pillager|pillager|pillager|pillager|pillager|pillager|pillager|pillager|pillager|pillager|pillager|pillager|pillager|pillager|pillager <location[-2,61,28,0,0,dragon]>
         - announce '<&4><&l>A Raid has Started in /Warp Dragon!'
         - execute as_server 'lp user <player.name> permission settemp tlb.mobwave.cooldown true 2m'
      - if <context.args.get[1]> == undead:
         - spawn zombie|zombie|zombie|zombie|zombie|zombie|zombie|zombie|zombie|zombie|zombie|zombie|zombie|zombie|zombie|zombie|zombie|zombie|zombie|zombie|zombie|zombie|zombie|zombie|zombie|zombie|zombie|zombie|zombie|zombie|zombie|zombie|zombie|zombie|zombie|zombie|zombie|zombie|zombie|zombie|zombie|zombie|zombie|zombie|zombie|zombie <location[7,59,59,0,0,dragon]>
         - spawn stray|skeleton|skeleton|skeleton|stray|skeleton|skeleton|stray|skeleton|skeleton|skeleton|stray|skeleton|skeleton|skeleton|skeleton|stray|skeleton|skeleton|skeleton|skeleton|skeleton|skeleton|skeleton|stray|skeleton|skeleton|stray|skeleton|stray|skeleton|skeleton|skeleton|skeleton|skeleton|skeleton|skeleton <location[-56,61,-40,0,0,dragon]>
         - spawn wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton|wither_skeleton <location[-2,61,28,0,0,dragon]>
         - spawn zombified_piglin|zombified_piglin|zombified_piglin|zombified_piglin|zombified_piglin|zombified_piglin|zombified_piglin|zombified_piglin|zombified_piglin|zombified_piglin|zombified_piglin|zombified_piglin|zombified_piglin|zombified_piglin|zombified_piglin|zombified_piglin|zombified_piglin|zombified_piglin|zombified_piglin|zombified_piglin|zombified_piglin|zombified_piglin <location[7,59,59,0,0,dragon]>
         - execute as_server 'lp user <player.name> permission settemp tlb.mobwave.cooldown true 2m'
         - announce '<&b><&l> Agatha has unleashed a spell that has summoned the armies of the undead to fight! Come and take them on in <&6>/Warp dragon!'
      - if <context.args.get[1]> == nether:
         - spawn zombified_piglin|zombified_piglin|zombified_piglin|zombified_piglin|zombified_piglin|zombified_piglin|zombified_piglin|zombified_piglin|zombified_piglin|zombified_piglin|zombified_piglin|zombified_piglin|zombified_piglin|zombified_piglin|zombified_piglin|zombified_piglin|zombified_piglin|zombified_piglin|zombified_piglin|zombified_piglin|zombified_piglin|zombified_piglin|zombified_piglin|zombified_piglin <location[7,59,59,0,0,dragon]>
         - spawn giant <location[-2,61,28,0,0,dragon]>
         - spawn giant <location[-56,61,-40,0,0,dragon]>
         - spawn giant <location[-48,59,30,0,0,dragon]>
         - spawn magma_cube|magma_cube|magma_cube|magma_cube|magma_cube|magma_cube|magma_cube|magma_cube|magma_cube|magma_cube|magma_cube|magma_cube|magma_cube|magma_cube|magma_cube|magma_cube|magma_cube|magma_cube|magma_cube|magma_cube|magma_cube|magma_cube|magma_cube|magma_cube|magma_cube|magma_cube|magma_cube|magma_cube|magma_cube|magma_cube|magma_cube|magma_cube|magma_cube|magma_cube|magma_cube|magma_cube|magma_cube|magma_cube|magma_cube|magma_cube|magma_cube <location[-56,61,-40,0,0,dragon]>
         - spawn piglin_brute|piglin_brute|piglin_brute|piglin_brute|piglin_brute|piglin_brute|piglin_brute|piglin_brute|piglin_brute|piglin_brute|piglin_brute|piglin_brute|piglin_brute|piglin_brute|piglin_brute|piglin_brute|piglin_brute|piglin_brute|piglin_brute|piglin_brute|piglin_brute|piglin_brute|piglin_brute|piglin_brute|piglin_brute|piglin_brute|piglin_brute|piglin_brute|piglin_brute <location[-2,61,28,0,0,dragon]>
         - spawn ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast|ghast <location[-48,59,30,0,0,dragon]>
         - announce '<&b><&l>Agatha summoned a nether invasion! <&4>Join @ /warp dragon!'
         - execute as_server 'lp user <player.name> permission settemp tlb.mobwave.cooldown true 2m'
      - if <context.args.get[1]> == clear:
         - foreach <player.location.find_entities.within[400]> as:mobs
              - execute as_server 'kill <[mobs]>'
    - if <player.has_permission[tlb.mobwave.cooldown]>:
      - narrate '<&6>[<&b>!<&6>]<&b> You have to wait for the cooldown to finish before you can do this command again.'
Agathaspeech:
      type: command
      name: agatha
      usage: /agatha
      description: Agatha Speech
      permission: agatha.use
      pemission message: <&4>No Permission.
      script:
      - announce "<&8>[<&f><&color[#420A55]><&l>Witch<&8>] <&f><&color[#AA40FF]>Agatha <&b>>> <&f><context.raw_args>"