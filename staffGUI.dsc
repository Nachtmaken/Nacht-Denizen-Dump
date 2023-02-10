StaffGUICommand:
        type: command
        name: staff
        description: This command gives staff access to everything from 1 place!
        usage: /staff
        script:
          - inventory open destination:StaffGUI

StaffGUI:
        type: inventory
        inventory: chest
        gui: true
        slots:
        - [] [] [] [] [] [] [] [] []
        - [] [] [] [] [] [] [] [] []
        - [] [] [] [] [] [] [] [] []
#Gamemode,teleport,warnGUI,staffchat,welcomemessage,staffmode,navigation,menu-creative
StaffmodeItem:
          type: item
          material: red_concrete
          display name: Staffmode
          lore:
          - <&5>Put you into staff mode!
WarnGUIItem:
          type: item
          material: yellow_concrete
          display name: Warn GUI
          lore:
          - <&5>open the warn GUI
StaffChatToggle:
            type: item
            material: orange_concrete
            display name: Staffchat Toggle

