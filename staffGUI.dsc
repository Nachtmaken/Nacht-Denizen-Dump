StaffGUICommand:
        type: command
        name: staff
        description: This command gives staff access to everything from 1 place!
        usage: /staff
        script:
          - inventory open destination:

StaffGUI:
        type: inventory
        inventory: chest
        gui: true
        slots:
        - [] [] [] [] [] [] [] [] []
        - [] [] [] [] [] [] [] [] []
        - [] [] [] [] [] [] [] [] []
#Gamemode,teleport,warnGUI,staffchat,welcomemessage,staffmode,navigation,menu-creative