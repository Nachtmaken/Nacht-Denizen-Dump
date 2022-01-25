toggleSC:
    type: command
    name: stafftoggle
    description: To toggle the staff chat
    usage: /stafftoggle
    permission: tlb.jrstaff
    permission-message: No permission.
    script:
     - if <player.has_permission[tlb.jrstaff]>:
       - inventory open d:in@toggleSCgui
       - determine FULFILLED
     - if !<player.has_permission[tlb.jrstaff]>:
       - narrate "<&6>[<&b>TLB<&6>]<&4> You do not have access to this command."
       - determine FULFILLED

toggleSCgui:
    type: inventory
    inventory: CHEST
    title: Staff Toggle
    size: 9
    gui: true
    definitions:
     jrstafftoggle: ItemTag1
     staffchattoggle: ItemTag2
     srstafftoggle: ItemTag3
    slots:
    - [] [i@jrstafftoggle] [] [] [i@staffchattoggle] [] [] [i@srstafftoggle] []

jrstafftoggle:
    type: item
    material: barrier
    display name: <&7>Toggle Jr.StaffChat
    lore:
    - "<&4>Enable or Disable /hc"
staffchattoggle:
    type: item
    material: redstone_torch
    display name: <&7>Toggle StaffChat
    lore:
    - "<&4>Enable or Disable /sc"
srstafftoggle:
    type: item
    material: dandelion
    display name: <&7>Toggle Sr.StaffChat
    lore:
    - "<&4>Enable or Disable /srsc"


staff_handler:
    type: world
    events:
      on player clicks jrstafftoggle in toggleSCgui:
       - execute as_player 'fstafftoggle @#34kj234e4g'
       - inventory close d:in@toggleSCgui
      on player clicks staffchattoggle in toggleSCgui:
       - execute as_player 'fstafftoggle @#34kj234e4h'
       - inventory close d:in@toggleSCgui
      on player clicks srstafftoggle in toggleSCgui:
       - execute as_player 'fstafftoggle @#34kj234e5j'
       - inventory close d:in@toggleSCgui
      on player joins:
        - if <player.has_permission[tlb.staff]>:
          - wait 5s
          - if <player.has_permission[staffchat.read]> :
              - narrate "<&6>[<&b>TLB<&6>] <&f>Staff chat is currently <&2>on<&f>!"
          - if !<player.has_permission[staffchat.read]>:
              - narrate "<&6>[<&b>TLB<&6>] <&f>Staff chat is currently <&c>off<&f>!"
          - if <player.has_permission[tlb.jrstaff]>:
             - if <player.has_permission[jrstaffchat.read]>:
                - narrate "<&6>[<&b>TLB<&6>] <&f>Jr.Staff chat is currently <&2>on<&f>!"
          - if !<player.has_permission[jrstaffchat.read]>:
                - narrate "<&6>[<&b>TLB<&6>] <&f>Jr.Staff Chat is currently <&c>off<&f>!"
          - if <player.has_permission[tlb.srstaff]>:
             - if <player.has_permission[seniorstaffchat.read]> :
                - narrate "<&6>[<&b>TLB<&6>] <&f>Sr.Staff chat is currently <&2>on<&f>!"
             - if !<player.has_permission[seniorstaffchat.read]>:
                - narrate "<&6>[<&b>TLB<&6>] <&f>Sr.Staff Chat is currently <&c>off<&f>!"
stafftogglecommand:
    type: command
    name: fstafftoggle
    description: To twat staff
    usage: /fstafftoggle
    script:
    - if <context.args.get[1]> = "@#34kj234e4g":
         - if <player.has_permission[jrstaffchat.read]>:
           - execute as_server "lp user <player.name> permission set jrstaffchat.read false"
           - narrate '<&6>[<&b>TLB<&6>] <&b>Jr.Staff Chat is now <&c>off<&f>!'
         - if !<player.has_permission[jrstaffchat.read]>:
           - execute as_server "lp user <player.name> permission set jrstaffchat.read true"
           - narrate '<&6>[<&b>TLB<&6>] <&b>Jr.Staff Chat is now <&2>on<&f>!'
    - if <context.args.get[1]> = "@#34kj234e4h":
       - if <player.has_permission[tlb.staffchattoggle]>:
         - if <player.has_permission[staffchat.read]>:
             - execute as_server "lp user <player.name> permission set staffchat.read false"
             - narrate '<&6>[<&b>TLB<&6>] <&b>Staff Chat is now <&c>off<&f>!'
         - if !<player.has_permission[staffchat.read]>:
             - execute as_server "lp user <player.name> permission set staffchat.read true"
             - narrate '<&6>[<&b>TLB<&6>] <&b>Staff Chat is now <&2>on<&f>!'
    - if <context.args.get[1]> = "@#34kj234e5j":
       - if <player.has_permission[tlb.seniorstaffchattoggle]>:
         - if <player.has_permission[seniorstaffchat.read]>:
           - execute as_server "lp user <player.name> permission set seniorstaffchat.read false"
           - narrate '<&6>[<&b>TLB<&6>] <&b>Sr.Staff Chat is now <&c>off<&f>!'
         - if !<player.has_permission[seniorstaffchat.read]>:
           - execute as_server "lp user <player.name> permission set seniorstaffchat.read true"
           - narrate '<&6>[<&b>TLB<&6>] <&b>Sr.Staff Chat is now <&2>on<&f>!'
       - if !<player.has_permission[tlb.seniorstaffchattoggle]>:
         - narrate '<&6>[<&b>TLB<&6>] No Permission.'
       - if !<player.has_permission[tlb.staffchattoggle]>:
         - narrate '<&6>[<&b>TLB<&6>] No Permission.'