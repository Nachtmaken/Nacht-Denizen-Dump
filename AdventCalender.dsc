AdventCalender:
    type: inventory
    inventory: CHEST
    title: Advent Calender
    size: 18
    gui: true
    slots:
    - [<tern[<player.has_permission[advent.day1]>].pass[i@day1closed].fail[i@day1open]>] [<tern[<player.has_permission[advent.day2]>].pass[i@day2closed].fail[i@day2open]>] [<tern[<player.has_permission[advent.day3]>].pass[i@day3closed].fail[i@day3open]>] [<tern[<player.has_permission[advent.day4]>].pass[i@day4closed].fail[i@day4open]>] [<tern[<player.has_permission[advent.day5]>].pass[i@day5closed].fail[i@day5open]]> [<tern[<player.has_permission[advent.day6]>].pass[i@day6closed].fail[i@day6open]>] [<tern[<player.has_permission[advent.day7]>].pass[i@day7closed].fail[i@day7open]>] [<tern[<player.has_permission[advent.day8]>].pass[i@day8closed].fail[i@day8open]>] [<tern[<player.has_permission[advent.day9]>].pass[i@day9closed].fail[i@day9open]>]
    - [agathawatch] [agathawatch] [agathawatch] [<tern[<player.has_permission[advent.day10]>].pass[i@day10closed].fail[i@day10open]>] [<tern[<player.has_permission[advent.day11]>].pass[i@day11closed].fail[i@day11open]>] [<tern[<player.has_permission[advent.day12]>].pass[day12closed].fail[day12open]>] [agathawatch] [agathawatch] [agathawatch]

day1open:
    type: item
    display name: <&7>Day 1
    material: green_concrete
    lore:
    - "<&a>Click to open me!"
day1closed:
    type: item
    display name: <&7>Day 1
    material: red_concrete
    lore:
    - "<&4>You've already opened me!"
day2open:
    type: item
    display name: <&7>Day 2
    material: green_concrete
    lore:
    - "<&a>Click to open me!"
day2closed:
    type: item
    display name: <&7>Day 2
    material: red_concrete
    lore:
    - "<&4>You've already opened me!"
day3closed:
    type: item
    display name: <&7>Day 3
    material: red_concrete
    lore:
    - "<&4>You've already opened me!"
day3open:
    type: item
    display name: <&7>Day 3
    material: green_concrete
    lore:
    - "<&a>Click to open me!"
day4closed:
    type: item
    display name: <&7>Day 4
    material: red_concrete
    lore:
    - "<&4>You've already opened me!"
day4open:
    type: item
    display name: <&7>Day 4
    material: green_concrete
    lore:
    - "<&a>Click to open me!"
day5closed:
    type: item
    display name: <&7>Day 5
    material: red_concrete
    lore:
    - "<&4>You've already opened me!"
day5open:
    type: item
    display name: <&7>Day 5
    material: green_concrete
    lore:
    - "<&a>Click to open me!"
day6closed:
    type: item
    display name: <&7>Day 6
    material: red_concrete
    lore:
    - "<&4>You've already opened me!"
day6open:
    type: item
    display name: <&7>Day 6
    material: green_concrete
    lore:
    - "<&a>Click to open me!"
day7closed:
    type: item
    display name: <&7>Day 7
    material: red_concrete
    lore:
    - "<&4>You've already opened me!"
day7open:
    type: item
    display name: <&7>Day 7
    material: green_concrete
    lore:
    - "<&a>Click to open me!"
day8closed:
    type: item
    display name: <&7>Day 8
    material: red_concrete
    lore:
    - "<&4>You've already opened me!"
day8open:
    type: item
    display name: <&7>Day 8
    material: green_concrete
    lore:
    - "<&a>Click to open me!"
day9closed:
    type: item
    display name: <&7>Day 9
    material: red_concrete
    lore:
    - "<&4>You've already opened me!"
day9open:
    type: item
    display name: <&7>Day 9
    material: green_concrete
    lore:
    - "<&a>Click to open me!"
day10open:
    type: item
    display name: <&7>Day 10
    material: green_concrete
    lore:
    - "<&a>Click to open me!"
day10closed:
    type: item
    display name: <&7>Day 10
    material: red_concrete
    lore:
    - "<&4>You've already opened me!"
day11open:
    type: item
    display name: <&7>Day 11
    material: green_concrete
    lore:
    - "<&a>Click to open me!"
day11closed:
    type: item
    display name: <&7>Day 11
    material: red_concrete
    lore:
    - "<&4>You've already opened me!"
day12open:
    type: item
    display name: <&7>Day 12
    material: green_concrete
    lore:
    - "<&a>Click to open me!"
day12closed:
    type: item
    display name: <&7>Day 12
    material: red_concrete
    lore:
    - "<&4>You've already opened me!"
agathawatch:
    type: item
    display name: <&5>Agatha is Watching
    material: purple_stained_glass_pane
    lore:
    - "<&7>Agatha will be watching you. <&7><&l>Always!"

adventlisterners:
    type: world
    events:
      on player clicks day1open in AdventCalder:
          - execute as_player 'adventcalenderitem $1#2*4^1'
          - inventory close destination:AdventCalender
          - execute as_server 'lp user <player.name> permission set advent.day1'
      on player clicks day2open in AdventCalder:
          - execute as_player 'adventcalenderitem $1#2*4^2'
          - inventory close destination:AdventCalender
          - execute as_server 'lp user <player.name> permission set advent.day2'
      on player clicks day3open in AdventCalder:
          - execute as_player 'adventcalenderitem $1#2*4^3'
          - inventory close destination:AdventCalender
          - execute as_server 'lp user <player.name> permission set advent.day3'
      on player clicks day4open in AdventCalder:
          - execute as_player 'adventcalenderitem $1#2*4^4'
          - inventory close destination:AdventCalender
          - execute as_server 'lp user <player.name> permission set advent.day4'
      on player clicks day5open in AdventCalder:
          - execute as_player 'adventcalenderitem $1#2*4^5'
          - inventory close destination:AdventCalender
          - execute as_server 'lp user <player.name> permission set advent.day5'
      on player clicks day6open in AdventCalder:
          - execute as_player 'adventcalenderitem $1#2*4^6'
          - inventory close destination:AdventCalender
          - execute as_server 'lp user <player.name> permission set advent.day6'
      on player clicks day7open in AdventCalder:
          - execute as_player 'adventcalenderitem $1#2*4^7'
          - inventory close destination:AdventCalender
          - execute as_server 'lp user <player.name> permission set advent.day7'
      on player clicks day8open in AdventCalder:
          - execute as_player 'adventcalenderitem $1#2*4^8'
          - inventory close destination:AdventCalender
          - execute as_server 'lp user <player.name> permission set advent.day8'
      on player clicks day9open in AdventCalder:
          - execute as_player 'adventcalenderitem $1#2*4^9'
          - inventory close destination:AdventCalender
          - execute as_server 'lp user <player.name> permission set advent.day9'
      on player clicks day10open in AdventCalder:
          - execute as_player 'adventcalenderitem $1#2*4^10'
          - inventory close destination:AdventCalender
          - execute as_server 'lp user <player.name> permission set advent.day10'
      on player clicks day11open in AdventCalder:
          - execute as_player 'adventcalenderitem $1#2*4^11'
          - inventory close destination:AdventCalender
          - execute as_server 'lp user <player.name> permission set advent.day11'
      on player clicks day12open in AdventCalder:
          - execute as_player 'adventcalenderitem $1#2*4^12'
          - inventory close destination:AdventCalender
          - execute as_server 'lp user <player.name> permission set advent.day12'

adventcommand:
    type: command
    name: adventcalenderitem
    description: Gives players the Items for Advent
    usage: /adventcalenderitem
    script:
    - if <context.args.get[1]> = $1#2*4^1: #day1
        # - placeholder
    - if <context.args.get[1]> = $1#2*4^2: #day2
        # - placeholder
    - if <context.args.get[1]> = $1#2*4^3: #day3
        # - placeholder
    - if <context.args.get[1]> = $1#2*4^4: #day4
        # - placeholder
    - if <context.args.get[1]> = $1#2*4^5: #day5
        # - placeholder
    - if <context.args.get[1]> = $1#2*4^6: #day6
        # - placeholder
    - if <context.args.get[1]> = $1#2*4^7: #day7
        # - placeholder
    - if <context.args.get[1]> = $1#2*4^8: #day8
        # - placeholder
    - if <context.args.get[1]> = $1#2*4^9: #day9
        # - placeholder
    - if <context.args.get[1]> = $1#2*4^10: #day10
        # - placeholder
    - if <context.args.get[1]> = $1#2*4^11: #day11
        # - placeholder
    - if <context.args.get[1]> = $1#2*4^12: #day12
        # - placeholder
adventcalendercmd:
    type: command
    name: adventcalender
    description: Gives players the Items for Advent
    usage: /adventcalender
    script:
    - if <player.has_permission[advent.day12]>:
         - narrate "<&4>You cannot open this as you've had all 12 days of christmas!"
    - if !<player.has_permission[advent.day12]>:
         - inventory open d:AdventCalender
         - determine FUFILLED
