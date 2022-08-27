# +--------------------
# |
# | SUFFIX SELECTOR
# |
# | A system integrated with luckperms
# | to facilitate adding suffixes to
# | usernames.
# |
# +----------------------
#
# @author jumpsplat120
# @date 03/15/2021
# @denizen-build b5405-DEV
# @script-version 1.0
#
# Installation:
# Place the following scripts in your scripts folder and reload:
#     * suffix-selector.dsc
#
# Requirements:
#     * LuckPerms
#
# Usage:
#   To add a suffix, use the /suffix command. A gui will pop up
#   displaying the suffixes the user has available to them. Simply
#   clicking on an item in the gui will give the user said suffix;
#   when chatting in game, the suffix will show up after the users
#   name but before their message.
#
#   To remove the suffix, you can click the remove suffix button
#   in the gui, and if there are more suffixes available then can
#   be seen in the gui, the previous/next page buttons will become
#   colored and allow you to navigate around. The suffix the user
#   currently has selected is highlighted; the item will have an
#   enchant glow.
#
#   In the gui, the default_icon is the backup icon if there is
#   no assigned icon for the permission, as well as a fallback
#   in case an icon was mispelled.
#   gui allows you to change the min/max amount of rows. There is
#   a min of at least 1 row, and a max of 6 rows, although be
#   aware that there is only room for 6 rows total, so 5 and 6 rows
#   will look functionally the same. Format is the bit of text
#   in front of the text that pops up when a suffix is assigned.
#   There are five default groups, as well as a special group. The
#   five groups are water, fire, earth, air and citizen and contain
#   a shared icon amongst all of the suffixes it contains. Under the
#   people entry is key value pairs, where the key is the permission,
#   and the value is the displayed suffix.
#   Under special, the formatting is different. Each entry uses it's
#   key as the permission, but contains another map with an icon and
#   a title. Icons are what item should be displayed for just the one
#   suffix, and title is the suffix itself. If the icon is set to
#   tilde (~), then it uses the default icon.
#
#   Questions? Get in touch at discord@jumpsplat120#0001
#
# --------------------END HEADER / START CONFIG--------------------

suffix_selector_config:
    type: data
    default_icon: diamond
    gui:
        min_rows: 3
        max_rows: 6
        format: <gold>[<aqua>TLB<gold>]
    water:
        icon: water_bucket
        lore: <&7>Obtained from <&d><&l>Tournaments
        people:
            Sokka: <aqua>Sokka
            Katara: <aqua>Katara
            Tarrlok: <aqua>Tarrlock
            Hama: <aqua>Hama
            Kya: <&3>Kya
    fire:
        icon: blaze_powder
        lore: <&7>Obtained from <&d><&l>Tournaments
        people:
            Mako: <&4>Mako
            Zuko: <&4>Zuko
            Azula: <&4>Azula
            Iroh: <&4>Iroh
            Ozai: <&c>Ozai
            Mai: <gold>Mai
            TyLee: <gold>Ty Lee
    earth:
        icon: dirt
        lore: <&7>Obtained from <&d><&l>Tournaments
        people:
            Bolin: <&2>Bolin
            Toph: <&2>Toph
            Kuvira: <&2>Kuvira
            Kyoshi: <&a>Kyoshi
            Bumi: <&a>Bumi
            Boulder: <&2>The Boulder
            Gopher: <&2>The Gopher
            Pebble: <&2>The Pebble
            suki: <gold>Suki
    air:
        icon: glass_pane
        lore: <&7>Obtained from <&d><&l>Tournaments
        people:
            Momo: <&7>Momo
            Appa: <&7>Appa
            Aang: <&7>Aang
            Tenzin: <&8>Tenzin
            Kai: <&7>Kai
            TwinkleToes: <&7>Twinkle Toes
    citizens:
        icon: redstone
        lore: <&7>Obtained from <&d><&l>Tournaments
        people:
            Sato: <gold>Sato
            Asami: <gold>Asami
    special:
        Tide:
            icon: water_bucket
            title: <aqua>The Tide
            lore: <&7>Obtained from <&d><&l>Tournaments
        Flowing:
            icon: water_bucket
            title: <aqua>The Flowing
            lore: <&7>Obtained from <&d><&l>Tournaments
        PuppetMaster:
            icon: totem_of_undying
            title: <aqua>PuppetMaster
            lore: <&7>Obtained from <&d><&l>Tournaments
        Inferno:
            icon: blaze_powder
            title: <&4>The Inferno
            lore: <&7>Obtained from <&d><&l>Tournaments
        Dragon:
            icon: dragon_head
            title: <&4>The Dragon
            lore: <&7>Obtained from <&d><&l>Tournaments
        Spark:
            icon: nether_star
            title: <&e>The Spark
            lore: <&7>Obtained from <&d><&l>Tournaments
        Swift:
            icon: glass_pane
            title: <&7>The Swift
            lore: <&7>Obtained from <&d><&l>Tournaments
        Monk:
            icon: glass_pane
            title: <&8>The Monk
            lore: <&7>Obtained from <&d><&l>Tournaments
        duelist:
            icon: crossbow
            title: <gold>The Duelist
            lore: <&7>Obtained from <&d><&l>Tournaments
        Striker:
            icon: iron_sword
            title: <gold>The Striker
            lore: <&7>Obtained from <&d><&l>Tournaments
        Calm:
            icon: ~
            title: <gold>The Calm
            lore: <&7>Obtained from <&d><&l>Tournaments
        Champion:
            icon: ~
            title: <&5>Champion
            lore: <&7>Obtained from <&d><&l>Winnings a Tournament
        Challenger:
            icon: ~
            title: <&8>Challenger
            lore: <&7>Obtained from <&d><&l>Participating in Tournaments
        lotus:
            icon: ~
            title: <aqua><&l>Lotus
            lore: <&7>Obtained from the <&d><&l>Lotus Rank
        sage:
            icon: ~
            title: <aqua><&l>Sage
            lore: <&7>Obtained from the <&d><&l>Sage Rank
        lord:
            icon: ~
            title: <aqua><&l>Lord
            lore: <&7>Obtained from the <&d><&l>Lord Rank
        spirit:
            icon: ~
            title: <aqua><&l>Spirit
            lore: <&7>Obtained from the <&d><&l>Spirit Rank
        judge:
            icon: ~
            title: <&5>Judge
            lore: <&7>Obtained from the <&d><&l>Judging a build contest
        architect:
            icon: wooden_Axe
            title: <&d>Architect
            lore: <&7>Obtained from <&d><&l>Build Contests
        Sculptor:
            icon: wooden_Axe
            title: <&d>Sculptor
            lore: <&7>Obtained from <&d><&l>Build Contests
        artist:
            icon: wooden_Axe
            title: <&d>Artist
            lore: <&7>Obtained from <&d><&l>Build Contests
        Intern:
            icon: wooden_Axe
            title: <&8>Intern
            lore: <&7>Obtained from <&d><&l>Build Contests
        Balanced:
            icon: wooden_Axe
            title: <gold>Balanced
            lore: <&7>Obtained from <&d><&l>Build Contests
        Mechanic:
            icon: wooden_Axe
            title: <&d>Mechanic
            lore: <&7>Obtained from <&d><&l>Build Contests
        Plumber:
            icon: wooden_Axe
            title: <&3>Plumber
            lore: <&7>Obtained from <&d><&l>Build Contests
        Maker:
            icon: wooden_Axe
            title: <&d>Maker
            lore: <&7>Obtained from <&d><&l>Build Contests
        Artisan:
            icon: wooden_Axe
            title: <&d>Artisan
            lore: <&7>Obtained from <&d><&l>Build Contests
        Harmony:
            icon: wooden_Axe
            title: <gold>Harmony
            lore: <&7>Obtained from <&d><&l>Build Contests
        Designer:
            icon: wooden_Axe
            title: <&d>Designer
            lore: <&7>Obtained from <&d><&l>Build Contests
        Artificer:
            icon: wooden_Axe
            title: <&d>Artificer
            lore: <&7>Obtained from <&d><&l>Build Contests
        Creator:
            icon: wooden_Axe
            title: <&d>Creator
            lore: <&7>Obtained from <&d><&l>Build Contests
        Overeasy:
            icon: egg
            title: <gold><&l>Over Easy
            lore: <&7>Obtained as a <&d><&l>Easter 2020 Winner
        Omelette:
            icon: egg
            title: <gold><&l>Omelette
            lore: <&7>Obtained as a <&d><&l>Easter 2020 Winner
        Deviled:
            icon: egg
            title: <gold><&l>Deviled
            lore: <&7>Obtained as a <&d><&l>Easter 2020 Winner
        Scrambled:
            icon: egg
            title: <gold>Scrambled
            lore: <&7>Obtained as a <&d><&l>Easter 2020 Winner
        Eggspert:
            icon: egg
            title: <gold>Eggspert
            lore: <&7>Obtained as a <&d><&l>Easter 2020 Winner
        Eggstreme:
            icon: egg
            title: <&color[#fbae0c]><&l>Eg<&color[#fbbe24]><&l>gs<&color[#fcce3d]><&l>tr<&color[#fcde55]><&l>em<&color[#fdef6e]><&l>e
            lore: <&7>Obtained from <&d><&l>Easter 2021
        Eggstrodinary:
            icon: egg
            title: <&color[#fbab08]><&l>Eg<&color[#fbb619]><&l>gs<&color[#fbc22a]><&l>tr<&color[#fccd3b]><&l>od<&color[#fcd84c]><&l>in<&color[#fce35d]>
            lore: <&7>Obtained as a <&d><&l>Easter 2021 Winner
        Eggcellent:
            icon: egg
            title: <&color[#fbad0b]><&l>Eg<&color[#fbbb21]><&l>gc<&color[#fcca37]><&l>el<&color[#fcd94d]><&l>le<&color[#fce762]><&l>n<&color[#fdef6d]><&l>t
            lore: <&7>Obtained as a <&d><&l>Easter 2021 Winner
        Collector:
            icon: egg
            title: <&color[#fbae0c]>C<&color[#fbb618]>o<&color[#fbbe24]>l<&color[#fbc630]>l<&color[#fcce3d]>e<&color[#fcd649]>c<&color[#fcde55]>t<&color[#fce661]>o<&color[#fdef6e]>r
            lore: <&7>Obtained as a <&d><&l>Easter 2021 Winner
        Hunter:
            icon: egg
            title: <gold>Hunter
            lore: <&7>Obtained from <&d><&l>Easter 2021 Participation
        misfortune:
            icon: ~
            title: <&4>Misfortune
            lore: <&7>Obtained from <&d><&l>2021 Fair Fountain
        lucky:
            icon: ~
            title: <&e>Lucky
            lore: <&7>Obtained from <&d><&l>2021 Fair Fountain
        aimbot:
            icon: ~
            title: <&9>Aimbot
            lore: <&7>Obtained from <&d><&l>2021 Fair Archery
        FireFerret:
            icon: ~
            title: <&c>Fire Ferret
            lore: <&7>Obtained from <&d><&l>Build Contests
        SkyBison:
            icon: ~
            title: <&7>Sky Bison
            lore: <&7>Obtained from <&d><&l>Build Contests
        Smartie:
            icon: ~
            title: <&a>Smartie
            lore: <&7>Obtained from <&d><&l>2020 Fair Trivia
        og:
            icon: ~
            title: <&d><&l>OG
            lore: <&7>Obtained by <&d><&l>Joining before July 11 2020
        Bob:
            icon: wooden_Axe
            title: <&color[#DD2527]>B<&color[#F18F44]>o<&color[#DD2527]>b
            lore: <&7>Obtained from <&d><&l>Build Contests
        Aviator:
            icon: ~
            title: <&color[#494949]>A<&color[#5B5B5B]>v<&color[#6C6C6C]>i<&color[#7E7E7E]>a<&color[#8F8F8F]>t<&color[#A1A1A1]>o<&color[#B2B2B2]>r
            lore: <&7>Obtained from <&d><&l>Build Contests
        Demolisher:
            icon: wooden_Axe
            title: <&color[#F8D305]>D<&color[#E3C209]>e<&color[#CFB10C]>m<&color[#BAA010]>o<&color[#A68F14]>l<&color[#917F18]>i<&color[#7C6E1B]>s<&color[#685D1F]>h<&color[#534C23]>e<&color[#3F3B26]>r
            lore: <&7>Obtained from <&d><&l>Build Contests
        Spooky:
            icon: ~
            title: <&color[#4D473F]>S<&color[#5D4D39]>p<&color[#6D5432]>o<&color[#7D5A2C]>o<&color[#8D6025]>k<&color[#9D671F]>y
            lore: <&7>Obtained from <&d><&l>Halloween 2020
        Haunted:
            icon: ~
            title: <&color[#242424]>H<&color[#312025]>a<&color[#3F1C25]>u<&color[#4C1826]>n<&color[#5A1527]>t<&color[#671128]>e<&color[#750D28]>d
            lore: <&7>Obtained from <&d><&l>Halloween 2020
        HalloweenJudge:
            icon: ~
            title: <&color[#8F0D27]>J<&color[#85133E]>u<&color[#7B1955]>d<&color[#71206B]>g<&color[#672682]>e
            lore: <&7>Obtained from <&d><&l>Halloween 2020 Costume Contest
        HalloweenWinner:
            icon: ~
            title: <&color[#2F414A]>N<&color[#363F57]>i<&color[#3D3C65]>g<&color[#443A72]>h<&color[#4B377F]>t<&color[#53358D]>m<&color[#5A329A]>a<&color[#6130A7]>r<&color[#682DB5]>e
            lore: <&7>Obtained from <&d><&l>Halloween 2020 Costume Contest
        HalloweenRunner:
            icon: ~
            title: <&5>Nightmare
            lore: <&7>Obtained from <&d><&l>Halloween 2020 Costume Contest
        Snowman:
            icon: ~
            title: <&color[#97E8F0]>S<&color[#A6EBF2]>n<&color[#B5EFF4]>o<&color[#C4F2F6]>w<&color[#D2F5F9]>m<&color[#E1F8FB]>a<&color[#F0FCFD]>n
            lore: <&7>Obtained from <&d><&l>Christmas 2020
        Chilly:
            icon: ~
            title: <&color[#9DDAE0]>C<&color[#8FD2DC]>h<&color[#80C9D8]>i<&color[#72C1D5]>l<&color[#64B8D1]>l<&color[#55B0CD]>y
            lore: <&7>Obtained from <&d><&l>Christmas 2020
        Reindeer:
            icon: ~
            title: <&color[#78541C]>R<&color[#824C1A]>e<&color[#8B4418]>i<&color[#953C15]>n<&color[#9E3413]>d<&color[#A82B11]>e<&color[#B1230F]>e<&color[#BB1B0C]>r
            lore: <&7>Obtained from <&d><&l>Christmas 2020
        Festive:
            icon: ~
            title: <&color[#008F1F]>F<&color[#40AB57]>e<&color[#80C78F]>s<&color[#BFE3C7]>t<&color[#FFFFFF]>i<&color[#EBB0AD]>v<&color[#D8625C]>e
            lore: <&7>Obtained from <&d><&l>Christmas 2020
        Seasonal:
            icon: ~
            title: <&color[#A32607]>Sesonal
            lore: <&7>Obtained from the <&d><&l>2020 Holiday Tournament
        SeasonalWinners:
            icon: ~
            title: <&color[#A32607]>S<&color[#933607]>e<&color[#834507]>a<&color[#725507]>s<&color[#626507]>o<&color[#527407]>n<&color[#428407]>a<&color[#319307]>l
            lore: <&7>Obtained from the <&d><&l>2020 Holiday Tournament
        Advisor:
            icon: knowledge_book
            title: <&color[#A32607]><&color[#cc73fb]>A<&color[#c47dfb]>d<&color[#bc87fb]>v<&color[#b492fc]>i<&color[#ac9cfc]>s<&color[#a4a6fc]>o<&color[#9cb1fd]>r
            lore: <&7>Obtained from <&d><&l>answering the 2021 Survey
        Media:
            icon: ~
            title: <&color[#3C0D6C]>Media
            lore: <&7>Obtained from the <&d><&l>Media Role
        custom.gratedpants:
            icon: diamon_leggings
            title: <&color[#00ffe0]>T<&color[#1ddfe4]>h<&color[#3bbfe8]>e<&color[#589fec]>H<&color[#7680f0]>u<&color[#9360f3]>n<&color[#b040f7]>g<&color[#ce20fb]>r<&color[#eb00ff]>y
            lore: <&7>A custom suffix for <&d><&l>GratedPants
        custom.poepoeee:
            icon: ~
            title: <&5>I ♥ Towwy
            lore: <&7>A custom suffix for <&d><&l>poepoeee
        custom.domminon:
            icon: ~
            title: <&4>I ♥ Mai
            lore: <&7>A custom suffix for <&d><&l>DomMineOn
        custom.jortt:
            icon: ~
            title: <&7>Wan Shi Ton
            lore: <&7>A custom suffix for <&d><&l>Jortt
        custom.prideJudge:
            icon: ~
            title: <&c>J<gold>u<&e>d<&a>g<&9>e
            lore: <&7>Obtained from <&d><&l>Judging pride 2020 Pride Skins
        custom.habtal:
            icon: ~
            title: <&5>Strawberry
            lore: <&7>A custom suffix for <&d><&l>Habtal
        custom.privatefunny:
            icon: fox_spawn_egg
            title: <&color[#2b1e21]><&l>We<&color[#401822]><&l>ndi<&color[#5f0f23]><&l>g<&color[#690c24]><&l>o
            lore: <&7>A custom suffix for <&d><&l>PrivateFunny
        custom.menno2:
            icon: SAND
            title: <&color[#cba843]><&l>SandLord
            lore: <&7>A custom suffix for <&d><&l>GwnMenno
        custom.Milo:
            icon: ~
            title: <&color[#B82612]>P<&color[#AB1D0E]>V<&color[#9C180C]>P <&color[#8C130A]>B<&color[#7D0F09]>R<&color[#6B0707]>O
            lore: <&7>A custom suffix for <&d><&l>WildMilo9
        custom.Moros:
            icon: ~
            title: <&color[#00AAAA]><&l>Titan
            lore: <&7>A custom suffix for <&d><&l>Moros666
        custom.Joan:
            icon: purple_wool
            title: <&color[#ffffff]><&l>M<&color[#e8d2f6]><&l>a<&color[#d2a5ed]><&l>j<&color[#bb79e3]><&l>i<&color[#a54cdb]><&l>n
            lore: <&7>A custom suffix for <&d><&l>Joan999
        custom.Halloween2021Winner:
            icon: pumpkin
            title: <&color[#bb2e8b]><&l>D<&color[#b52c7e]><&l>i<&color[#af2a70]><&l>s<&color[#a92863]><&l>g<&color[#a32755]><&l>u<&color[#9d2548]><&l>i<&color[#97233a]><&l>s<&color[#91212d]><&l>e<&color[#8b1f1f]><&l>d
            lore: <&7>Obtained from the <&d><&l>Halloween 2021 Costume Contest
        custom.Halloween2021runner:
            icon: pumpkin
            title: <&color[#8B1F1F]><&l>Disguised
            lore: <&7>Obtained from the <&d><&l>Halloween 2021 Costume Contest
        custom.zel:
            icon: apple
            title: <&color[#7842f5]><&l>R<&color[#8352f7]><&l>a<&color[#895df0]><&l>i<&color[#9771f0]><&l>n<&color[#9f7af5]><&l>i<&color[#a988f7]><&l><&lt>3
            lore: <&7>A custom suffix for <&d><&l>JulieRocksABC
        custom.xan:
            icon: lily_pad
            title: <&color[#f2ac66]>S<&color[#ed9a5f]>a<&color[#eb8e59]>l<&color[#e88054]>a<&color[#e67350]>m<&color[#e3624b]>a<&color[#e85e51]>n<&color[#ed5a61]>d<&color[#f06071]>e<&color[#f56981]>r
            lore: <&7>A custom suffix for <&d><&l>xpsn
        custom.worlf2:
            icon: wolf_spawn_egg
            title: <&color[#1a9eb0]><&l>KA<&color[#35b7ca]><&L>CH<&color[#4cd1e4]><&l>OW
            lore: <&7>A custom suffix for <&d><&l>worlf_
        custom.Worlf:
            icon: diamond_block
            title: <&color[#1a9eb0]>Li<&color[#25a6b8]>gh<&color[#30afc0]>tn<&color[#3bb7c9]>in<&color[#46c0d1]>gS<&color[#51c9d9]>pa<&color[#5cd1e2]>mm<&color[#67daea]>er
            lore: <&7>A custom suffix for <&d><&l>worlf_
        custom.Myst:
            icon: ~
            title: <&color[#A2E4F2]>H<&color[#9FDDED]>y<&color[#9DDAEB]>d<&color[#96D1E3]>r<&color[#94CFE3]>o<&color[#90CBE0]> H<&color[#8AC4DB]>o<&color[#88C2DB]>m<&color[#81BBD6]>i<&color[#7DB4D1]>e
            lore: <&7>A custom suffix for <&d><&l>Mystryy
        custom.stumpi:
            icon: Crimson_Roots
            title: <&color[#a12525]><&l>D<&color[#941f1f]><&l>e<&color[#8a1c1c]><&l>v<&color[#801919]><&l>o<&color[#751515]><&l>u<&color[#6b1212]><&l>r<&color[#610f0f]><&l>e<&color[#590d0d]><&l>r
            lore: <&7>A custom suffix for <&d><&l>Stumpiiii
        custom.rapid:
            icon: fire_charge
            title: <&color[#70eeff]><&l>F<&color[#8cf1ff]><&l>r<&color[#a9f4ff]><&l>i<&color[#c5f8ff]><&l>a<&color[#e2fbff]><&l>r
            lore: <&7>A custom suffix for <&d><&l>RapidShitFire
        custom.pride:
            icon: ~
            title: <&7>Pride
            lore: <&7>Obtained from <&d><&l>Pride 2020
        custom.magnet:
            icon: iron_block
            title: <&color[#69777b]>Fe<&color[#788589]>rr<&color[#869297]>om<&color[#95a0a4]>an<&color[#a4adb2]>cer
            lore: <&7>A custom suffix for <&d><&l>MagnetOndra
        custom.lokia:
            icon: witch_spawn_egg
            title: <&color[#563982]><&l>R<&color[#5d3e87]><&l>a<&color[#63438c]><&l>v<&color[#694791]><&l>e<&color[#714b96]><&l>n
            lore: <&7>A custom suffix for <&d><&l>LokiaWanda
        custom.andrea:
            icon: lilac
            title: <&color[#7ca679]><&l>V<&color[#7ca679]><&l>e<&color[#88a278]><&l>s<&color[#88a278]><&l>n<&color[#959f77]><&l>a
            lore: <&7>A custom suffix for <&d><&l>andreaMage
        custom.juli:
            icon: golden_apple
            title: <&color[#55cdfc]>C<&color[#96bee1]>r<&color[#d7afc6]>i<&color[#f9b9c6]>n<&color[#fcdce3]>g<&color[#ffffff]>e<&color[#fcdce3]>Q<&color[#f9b9c6]>u<&color[#d7afc6]>e<&color[#96bee1]>e<&color[#55cdfc]>n
            lore: <&7>A custom suffix for <&d><&l>Juli
        custom.planti:
            icon: vine
            title: <&color[#0a674b]><&l>W<&color[#0b7555]><&l>o<&color[#0d835f]><&l>o<&color[#0e906a]><&l>d<&color[#109e74]><&l>s<&color[#11ac7e]><&l>y
            lore: <&7>A custom suffix for <&d><&l>AlexNay1505
        custom.neo:
            icon: dragon_head
            title: <&color[#a72ce4]><&l>C<&color[#ac3be7]><&l>o<&color[#b24beb]><&l>r<&color[#b75aee]><&l>r<&color[#bd69f1]><&l>u<&color[#c279f5]><&l>p<&color[#c888f8]><&l>t<&color[#cd97fb]><&l>e<&color[#d3a7ff]><&l>d
            lore: <&7>A custom suffix for <&d><&l>Neo_Dragon
        custom.gael:
            icon: golden_apple
            title: <&color[#96b0d6]><&l>M<&color[#9cb9d9]><&l>e<&color[#a4c3de]><&l>d<&color[#accce3]><&l>i<&color[#b5d5e8]><&l>c
            lore: <&7>A custom suffix for <&d><&l>Mexicanism
        custom.gael2:
            icon: apple
            title: <&color[#efd5ba]><&l>Be<&color[#f5d5ba]><&l>s<&color[#f8d5ba]><&l>ti<&color[#ffd5ba]><&l>e
            lore: <&7>A custom suffix for <&d><&l>Mexicanism
        custom.gael4:
            icon: poisonous_potato
            title: <&color[#570600]><&l>A<&color[#550c00]><&l>n<&color[#531200]><&l>u<&color[#511800]><&l>b<&color[#4f1d00]><&l>i<&color[#4d2300]><&l>s
            lore: <&7>A custom suffix for <&d><&l>Mexicanism
        custom.gael3:
            icon: potato
            title: <&color[#313131]><&l>N<&color[#2f2f2f]><&l>D<&color[#2e2e2e]><&l>A
            lore: <&7>A custom suffix for <&d><&l>Mexicanism
        custom.gael5:
            icon: carrot
            title: <&color[#361559]><&l>Ox<&color[#38165c]><&l>yt<&color[#3a165e]><&l>oc<&color[#3c1761]><&l>in
            lore: <&7>A custom suffix for <&d><&l>Mexicanism
        custom.gael6:
            icon: elytra
            title: <&color[#d3a47e]><&l>GO<&color[#d8ab81]><&l>LD<&color[#deb385]><&l>WI<&color[#e6be8a]><&l>NG
            lore: <&7>A custom suffix for <&d><&l>Mexicanism
        custom.gael7:
            icon: iron_sword
            title: <&color[#8a0303]><&l>Su<&color[#800808]><&l>r<&color[#7b0b0b]><&l>ge<&color[#701010]><&l>o<&color[#6b1313]><&l>n
            lore: <&7>A custom suffix for <&d><&l>Mexicanism
        custom.gael8:
            icon: seagrass
            title: <&color[#078548]><&l>Bo<&color[#058b4f]><&l>ta<&color[#039057]><&l>ni<&color[#01965e]><&l>s<&color[#009962]><&l>t
            lore: <&7>A custom suffix for <&d><&l>Mexicanism
        custom.tubboat:
            icon: oak_boat
            title: <&color[#ea0000]><&l>L<&color[#d90000]><&l>a<&color[#c90000]><&l>g<&color[#b80000]><&l>g<&color[#a80000]><&l>y
            lore: <&7>A custom suffix for <&d><&l>HelloIamLost
        custom.mush:
            icon: red_mushroom
            title: <&color[#003700]>F<&color[#1d521d]>l<&color[#3b6d3b]>o<&color[#598959]>r<&color[#77a477]>a<&color[#95bf95]>l
            lore: <&7>A custom suffix for <&d><&l>Mushrooms_bored
        custom.prideRainbow:
            icon: ~
            title: <&c>P<&6>r<&e>i<&a>d<&9>e
            lore: <&7>Obtained from the <&d><&l>Pride 2020 Skin Contest
        Presents2020.Top:
            icon: ~
            title: <&color[#42E0F5]>G<&color[#42D3F5]>i<&color[#42C6F5]>f<&color[#42BAF5]>t<&color[#42ADF5]>e<&color[#42A0F5]>d
            lore: <&7>Obtained from the <&d><&l>2020 Present Hunt
        Presents2020.Participation:
            icon: ~
            title: <&color[#099C4E]>Present
            lore: <&7>Obtained from the <&d><&l>2020 Present Hunt
        Valentines.Winner:
            icon: ~
            title: <&color[#C44B59]>A<&color[#CC546A]>d<&color[#D15A76]>o<&color[#D96283]>r<&color[#E06991]>e<&color[#E874A1]>d
            lore: <&7>Obtained from <&d><&l>2021 Valentine's Day Skin Contest
        Valentines.Runnerup:
            icon: ~
            title: <&color[#C44B59]>Adored
            lore: <&7>Obtained from <&d><&l>2021 Valentine's Day Skin Contest
        magician:
            icon: wooden_axe
            title: <&color[#888888]>M<&color[#827f84]>a<&color[#7c7680]>g<&color[#756c7c]>i<&color[#756c7c]>c<&color[#6f6377]>i<&color[#695b73]>a<&color[#62526f]>n
            lore: <&7>Obtained from <&d><&l>Build Contests
        astronaut:
            icon: wooden_axe
            title: <&color[#4b56a2]>A<&color[#4f529b]>s<&color[#514d95]>t<&color[#53498e]>r<&color[#554587]>o<&color[#564181]>n<&color[#563d7a]>a<&color[#563973]>u<&color[#56356d]>t
            lore: <&7>Obtained from <&d><&l>Build Contests
        mechanist:
            icon: wooden_axe
            title: <&color[#795900]>M<&color[#876716]>e<&color[#957427]>c<&color[#a38337]>h<&color[#b19147]>a<&color[#a38337]>n<&color[#957427]>i<&color[#876716]>s<&color[#795900]>t
            lore: <&7>Obtained from <&d><&l>Build Contests
        zookeeper:
            icon: wooden_axe
            title: <&color[#4e6c57]>Z<&color[#4e664d]>o<&color[#4f5f43]>o<&color[#50593a]>k<&color[#515232]>e<&color[#514b2b]>e<&color[#524425]>p<&color[#523d21]>e<&color[#523d21]>r
            lore: <&7>Obtained from <&d><&l>Build Contests
        acrobat:
            icon: wooden_axe
            title: <&color[#6bad4c]>A<&color[#4fa65b]>c<&color[#339f68]>r<&color[#149773]>o<&color[#008e7a]>b<&color[#00847e]>a<&color[#0c7a7e]>t
            lore: <&7>Obtained from <&d><&l>Build Contests
        skydiver:
            icon: wooden_axe
            title: <&color[#8bd0fe]>S<&color[#88c0e7]>k<&color[#84b1d1]>y<&color[#80a2bb]>d<&color[#7b93a5]>i<&color[#758490]>v<&color[#6f767c]>e<&color[#686868]>r
            lore: <&7>Obtained from <&d><&l>Build Contests
        wilson:
            icon: wooden_axe
            title: <&color[#8c4223]>W<&color[#8b4529]>i<&color[#8a482f]>l<&color[#884b35]>s<&color[#874e3b]>o<&color[#855140]>n
            lore: <&7>Obtained from <&d><&l>Build Contests
        outcast:
            icon: wooden_axe
            title: <&color[#f7ff8a]>O<&color[#f1f0a3]>u<&color[#eae0b9]>t<&color[#e3cfcd]>c<&color[#dcbddf]>a<&color[#d5a8f0]>s<&color[#cd91ff]>t
            lore: <&7>Obtained from <&d><&l>Build Contests
        painter:
            icon: wooden_axe
            title: <&color[#ffdaf9]>P<&color[#ffc6f9]>a<&color[#ffb2fa]>i<&color[#ff9dfb]>n<&color[#ffb2fa]>t<&color[#ffc6f9]>e<&color[#ffdaf9]>r
            lore: <&7>Obtained from <&d><&l>Build Contests
        ZhuLi:
            icon: diamond
            title: <&color[#6e9b5b]>ZhuLi
            lore: <&7>Obtained from <&d><&l>/Perks
        JooDee:
            icon: diamond
            title: <&color[#a5ce78]>JooDee
            lore: <&7>Obtained from <&d><&l>/Perks
        Ginger:
            icon: diamond
            title: <&color[#bc7332]>Ginger
            lore: <&7>Obtained from <&d><&l>/Perks
        DaiLi:
            icon: diamond
            title: <&color[#2d4a18]>DaiLi
            lore: <&7>Obtained from <&d><&l>/Perks
        Ikki:
            icon: diamond
            title: <&color[#7e7f7e]>Ikki
            lore: <&7>Obtained from <&d><&l>/Perks
        Jet:
            icon: diamond
            title: <&color[#903114]>Jet
            lore: <&7>Obtained from <&d><&l>/Perks
        Meelo:
            icon: diamond
            title: <&color[#c78005]>Meelo
            lore: <&7>Obtained from <&d><&l>/Perks
        Jinora:
            icon: diamond
            title: <&color[#adadad]>Jinora
            lore: <&7>Obtained from <&d><&l>/Perks
        Juicy:
            icon: diamond
            title: <&color[#6d6455]>Juicy
            lore: <&7>Obtained from <&d><&l>/Perks
        MingHua:
            icon: diamond
            title: <&color[#4473ae]>MingHua
            lore: <&7>Obtained from <&d><&l>/Perks
        Roku:
            icon: diamond
            title: <&color[#d52929]>Roku
            lore: <&7>Obtained from <&d><&l>/Perks
        Naga:
            icon: diamond
            title: <&color[#f0f0f0]>Naga
            lore: <&7>Obtained from <&d><&l>/Perks
        Oogi:
            icon: diamond
            title: <&color[#c9c8c7]>Oogi
            lore: <&7>Obtained from <&d><&l>/Perks
        Pabu:
            icon: diamond
            title: <&color[#9d2929]>Pabu
            lore: <&7>Obtained from <&d><&l>/Perks
        Pepper:
            icon: diamond
            title: <&color[#9a9a9a]>Pepper
            lore: <&7>Obtained from <&d><&l>/Perks
        Raava:
            icon: diamond
            title: <&color[#ffffff]>Raava
            lore: <&7>Obtained from <&d><&l>/Perks
        Vaatu:
            icon: diamond
            title: <&color[#950549]>Vaatu
            lore: <&7>Obtained from <&d><&l>/Perks
        Wan:
            icon: diamond
            title: <&color[#A97526]>Wan
            lore: <&7>Obtained from <&d><&l>/Perks
        Korra:
            icon: diamond
            title: <&color[#B5C93E]>Suki
            lore: <&7>Obtained from <&d><&l>/Perks
        Zaheer:
            icon: diamond
            title: <&color[#FBFBFB]>Zaheer
            lore: <&7>Obtained from <&d><&l>/Perks
        ZhuLi.fancy:
            icon: emerald
            title: <&color[#799a4b]><&l>Z<&color[#84993b]><&l>h<&color[#90982c]><&l>u<&color[#9b971c]><&l>l<&color[#a7970d]><&l>i
            lore: <&7>Obtained from <&d><&l>Donating on the /store
        JooDee.fancy:
            icon: emerald
            title: <&color[#648f4c]><&l>J<&color[#5b833e]><&l>o<&color[#52782f]><&l>o<&color[#486c21]><&l>D<&color[#3f6012]><&l>e<&color[#365504]><&l>e
            lore: <&7>Obtained from <&d><&l>Donating on the /store
        Ginger.fancy:
            icon: emerald
            title: <&color[#a3411d]><&l>G<&color[#ab3518]><&l>i<&color[#b42913]><&l>n<&color[#bc1d0e]><&l>g<&color[#c41109]><&l>e<&color[#cd0505]><&l>r
            lore: <&7>Obtained from <&d><&l>Donating on the /store
        DaiLi.fancy:
            icon: emerald
            title: <&color[#51a810]><&l>D<&color[#469211]><&l>a<&color[#3a7c12]><&l>i<&color[#306613]><&l>L<&color[#255015]><&l>i
            lore: <&7>Obtained from <&d><&l>Donating on the /store
        Ikki.fancy:
            icon: emerald
            title: <&color[#d5d09a]><&l>I<&color[#e3d86e]><&l>k<&color[#f1e042]><&l>k<&color[#ffe816]><&l>i
            lore: <&7>Obtained from <&d><&l>Donating on the /store
        Jet.fancy:
            icon: emerald
            title: <&color[#b13c0c]><&l>J<&color[#d85810]><&l>e<&color[#ff7614]><&l>t
            lore: <&7>Obtained from <&d><&l>Donating on the /store
        Meelo.fancy:
            icon: emerald
            title: <&color[#a24606]><&l>M<&color[#b96e05]><&l>e<&color[#d09604]><&l>e<&color[#e7be03]><&l>l<&color[#ffe602]><&l>o
            lore: <&7>Obtained from <&d><&l>Donating on the /store
        Jinora.fancy:
            icon: emerald
            title: <&color[#f0ad20]><&l>J<&color[#ebb940]><&l>i<&color[#e6c560]><&l>n<&color[#e1d180]><&l>o<&color[#dcdda0]><&l>r<&color[#d7e9c0]><&l>a
            lore: <&7>Obtained from <&d><&l>Donating on the /store
        Juicy.fancy:
            icon: emerald
            title: <&color[#827e6a]><&l>J<&color[#979980]><&l>u<&color[#acb395]><&l>i<&color[#c1ceab]><&l>c<&color[#d7e9c1]><&l>y
            lore: <&7>Obtained from <&d><&l>Donating on the /store
        MingHua.fancy:
            icon: emerald
            title: <&color[#1b587e]><&l>M<&color[#1b6690]><&l>i<&color[#1a73a2]><&l>n<&color[#1a81b3]><&l>g<&color[#198ec5]><&l>H<&color[#199cd7]><&l>u<&color[#19aae8]><&l>a
            lore: <&7>Obtained from <&d><&l>Donating on the /store
        Roku.fancy:
            icon: emerald
            title: <&color[#d92929]><&l>R<&color[#b82222]><&l>o<&color[#961b1b]><&l>k<&color[#751515]><&l>u
            lore: <&7>Obtained from <&d><&l>Donating on the /store
        Naga.fancy:
            icon: emerald
            title: <&color[#d1e4ef]><&l>N<&color[#c6e0ed]><&l>a<&color[#bbdceb]><&l>g<&color[#b0d8e9]><&l>a
            lore: <&7>Obtained from <&d><&l>Donating on the /store
        Oogi.fancy:
            icon: emerald
            title: <&color[#aca491]><&l>O<&color[#bfb9ac]><&l>o<&color[#d1cec7]><&l>g<&color[#e4e3e2]><&l>i
            lore: <&7>Obtained from <&d><&l>Donating on the /store
        Pabu.fancy:
            icon: emerald
            title: <&color[#c7662a]><&l>P<&color[#b85421]><&l>a<&color[#a94218]><&l>b<&color[#9a3110]><&l>u
            lore: <&7>Obtained from <&d><&l>Donating on the /store
        Pepper.fancy:
            icon: emerald
            title: <&color[#bfbeba]><&l>P<&color[#b6b5ae]><&l>e<&color[#adaca1]><&l>p<&color[#a4a295]><&l>p<&color[#9b9988]><&l>e<&color[#92907c]><&l>r
            lore: <&7>Obtained from <&d><&l>Donating on the /store
        Raava.fancy:
            icon: emerald
            title: <&color[#cafbf8]><&l>R<&color[#9afbf5]><&l>a<&color[#69fcf3]><&l>a<&color[#39fcf0]><&l>v<&color[#09fdee]><&l>a
            lore: <&7>Obtained from <&d><&l>Donating on the /store
        Vaatu.fancy:
            icon: emerald
            title: <&color[#551f4a]><&l>V<&color[#6a1b50]><&l>a<&color[#7f1756]><&l>a<&color[#94135c]><&l>t<&color[#a90f62]><&l>u
            lore: <&7>Obtained from <&d><&l>Donating on the /store
        Wan.fancy:
            icon: emerald
            title: <&color[#be8c4b]><&l>W<&color[#b38038]><&l>a<&color[#a97526]><&l>n
            lore: <&7>Obtained from <&d><&l>Donating on the /store
        Korra.fancy:
            icon: emerald
            title: <&color[#2779e8]><&l><&l>K<&color[#2769d5]><&l><&l>o<&color[#2759c2]><&l>r<&color[#2749af]><&l>r<&color[#273a9c]><&l>a
            lore: <&7>Obtained from <&d><&l>Donating on the /store
        Zaheer.fancy:
            icon: emerald
            title: <&color[#bfbfa3]><&l>Z<&color[#cbcbb5]><&l>a<&color[#d7d7c6]><&l>h<&color[#e3e3d8]><&l>e<&color[#efefe9]><&l>e<&color[#fbfbfb]><&l>r
            lore: <&7>Obtained from <&d><&l>Donating on the /store
        pride-mlm:
            icon: enchanted_golden_apple
            title:  <&color[#44bfae]><&l>P<&color[#87eeed]><&l>r<&color[#eeeeee]><&l>i<&color[#3e7ac1]><&l>d<&color[#002a89]><&l>e
            lore: <&7>Obtained from <&d><&l>Pride 2021
        pride-rainbow:
            icon: enchanted_golden_apple
            title:  <&color[#f5c3a8]><&l>P<&color[#f9dda7]><&l>r<&color[#d0f4a8]><&l>i<&color[#abeaa8]><&l>d<&color[#a8b1dc]><&l>e
            lore: <&7>Obtained from <&d><&l>Pride 2021
        pride-bi:
            icon: enchanted_golden_apple
            title: <&color[#c7167c]><&l>P<&color[#b72d87]><&l>r<&color[#a84492]><&l>i<&color[#543c9d]><&l>d<&color[#0035a9]><&l>e
            lore: <&7>Obtained from <&d><&l>Pride 2021
        pride-lesbian:
            icon: enchanted_golden_apple
            title: <&color[#ea632a]><&l>P<&color[#ff9955]><&l>r<&color[#ffffff]><&l>i<&color[#ba3183]><&l>d<&color[#a40162]><&l>e
            lore: <&7>Obtained from <&d><&l>Pride 2021
        amuse-fortune:
            icon: pig_spawn_egg
            title: <&color[#32ad3f]>F<&color[#37b043]>or<&color[#3dba4a]>t<&color[#3fbf4c]>u<&color[#42c24f]>n<&color[#46c753]>a<&color[#4bc957]>te
            lore: <&7>Obtained from the <&d><&l>2021 Birthday Wheel of Misfortune
        amuse-unlucky:
            icon: pig_spawn_egg
            title: <&color[#6e6969]>U<&color[#757171]>n<&color[#7d7979]>l<&color[#827e7e]>u<&color[#878383]>c<&color[#8c8989]>k<&color[#918e8e]>y
            lore: <&7>Obtained from the <&d><&l>2021 Birthday Wheel of Misfortune
        amuse-slippery:
            icon: pig_spawn_egg
            title: <&color[#73abc7]>S<&color[#7ab1cc]>li<&color[#87bcd6]>p<&color[#8cc1db]>p<&color[#92c7e0]>e<&color[#96cbe3]>r<&color[#9bd0e8]>y
            lore: <&7>Obtained from the <&d><&l>2021 Birthday Boat Races
        amuse-sniper:
            icon: pig_spawn_egg
            title: <&color[#432c9e]>S<&color[#4d32a6]>n<&color[#5c39ad]>i<&color[#6b3fb5]>p<&color[#7543ba]>e<&color[#8049bf]>r
            lore: <&7>Obtained from the <&d><&l>2021 Birthday Archery
        amuse-bottled:
            icon: pig_spawn_egg
            title: <&color[#a1687b]>B<&color[#a36d84]>o<&color[#a8748f]>t<&color[#ab7995]>t<&color[#ad7d9e]>l<&color[#b082a6]>e<&color[#b58aae]>d
            lore: <&7>Obtained from the <&d><&l>2021 Birthday Bottle Toss
        amuse-scavenger:
            icon: pig_spawn_egg
            title: <&color[#edd780]>Sc<&color[#d1e37b]>a<&color[#c0de76]>v<&color[#afd46c]>en<&color[#96c963]>g<&color[#8cc25d]>e<&color[#7fba57]>r
            lore: <&7>Obtained from <&d><&l>Halloween 2021
        amuse-navigator:
            icon: pig_spawn_egg
            title: <&color[#e07043]>Na<&color[#eb8f4d]>v<&color[#ed9a51]>i<&color[#f0a454]>g<&color[#f5ae58]>a<&color[#f7b95c]>to<&color[#fcce6a]>r
            lore: <&7>Obtained from the <&d><&l>Birthday Fair 2021 Maze
        amuse-gerald:
            icon: pig_spawn_egg
            title: <&color[#fbbfac]><&l>G<&color[#fbb7a8]><&l>e<&color[#fcafa4]><&l>r<&color[#fca79f]><&l>a<&color[#fc9f9b]><&l>l<&color[#fd9797]><&l>d
            lore: <&7>Obtained by <&d><&l>Joining before our July 11 2021
        amuse-wise:
            icon: pig_spawn_egg
            title: <&color[#b496dc]><&l>W<&color[#9774bd]><&l>i<&color[#7a529e]><&l>s<&color[#5d3080]><&l>e
            lore: <&7>Obtained from the <&d><&l>2021 Birthday Trivia
        amuse-clever:
            icon: pig_spawn_egg
            title: <&color[#85e692]><&l>C<&color[#81d282]><&l>l<&color[#7dbd73]><&l>e<&color[#79a963]><&l>v<&color[#759453]><&l>e<&color[#718044]><&l>r
            lore: <&7>Obtained from the <&d><&l>2021 Birthday Trivia
        amuse-agatha:
            icon: pig_spawn_egg
            title: <&color[#464e97]><&l>A<&color[#42537c]><&l>g<&color[#3e5961]><&l>a<&color[#3a5e45]><&l>t<&color[#36632a]><&l>h<&color[#32690f]><&l>a
            lore: <&7>Obtained from the <&d><&l>2021 Birthday Trivia
        halloween2021-joker:
            icon: pumpkin
            title: <&color[#e60000]>J<&color[#e60000]>o<&color[#e60000]>k<&color[#e60000]>e<&color[#e60000]>r
            lore: <&7>Obtained from <&d><&l>2021 Halloween Trick or Treating
        halloween2021-trickster:
            icon: pumpkin
            title: <&color[#563e80]>T<&color[#563e80]>r<&color[#563e80]>i<&color[#563e80]>c<&color[#563e80]>k<&color[#563e80]>s<&color[#563e80]>t<&color[#563e80]>e<&color[#563e80]>r
            lore: <&7>Obtained from <&d><&l>2021 Halloween Trick or Treating
        halloween2021-frankenstein:
            icon: pumpkin
            title: <&color[#057a26]>F<&color[#0b7529]>r<&color[#10702b]>a<&color[#166b2e]>n<&color[#1b6630]>k<&color[#206132]>e<&color[#265b35]>n<&color[#2c5638]>s<&color[#31513a]>t<&color[#374c3d]>e<&color[#3c473f]>i<&color[#424242]>n
            lore: <&7>Obtained from <&d><&l>2021 Halloween Trick or Treating
        nachtmaken-british:
            icon: red_banner
            title: <&color[#da0024]>B<&color[#b90048]>r<&color[#98006c]>i<&color[#770090]>t<&color[#5600b4]>i<&color[#3500d8]>s<&color[#1400fc]>h
            lore: <&7>Obtained from <&d><&l>???

# --------------------END HEADER / START CODE--------------------

suffix_command:
    type: command
    debug: false
    name: suffix
    description: Set your chat suffix with a GUI.
    usage: /suffix
    aliases:
        - suf
    script:
        - if <player.has_permission[tlb.suffix].global>:
            # ~~~ Init defines ~~~ #
            - define config <script[suffix_selector_config]>
            - define min_rows <[config].data_key[gui.min_rows]>
            - define max_rows <[config].data_key[gui.max_rows]>
            # ~~~ Error checking ~~~ #
            - if <[min_rows].is[OR_LESS].than[<[max_rows]>]>:
                - if <[min_rows].is[OR_LESS].than[6]>:
                    - if <[max_rows].is[OR_LESS].than[6]>:
                        - if <[min_rows].is[OR_MORE].than[1]>:
                            - if <[max_rows].is[OR_MORE].than[1]>:
                                # ~~~ The rest of the defines ~~~ #
                                - define min_amount <tern[<[min_rows].is[==].to[6]>].pass[5].fail[<[min_rows]>].mul[9]>
                                - define max_amount <tern[<[max_rows].is[==].to[6]>].pass[5].fail[<[max_rows]>].mul[9]>
                                - define suffix_amount 0
                                - define item_list <list>
                                - define default_icon <item[<[config].data_key[default_icon]>]||nil>
                                - define inv_pages <list>
                                - define generic_inv <inventory[generic_inventory]>
                                - define air <item[air]>
                                - define remove <item[remove_suffix]>
                                - define next_page <item[next_page]>
                                - define prev_page <item[prev_page]>
                                - define no_next_page <item[no_next_page]>
                                - define no_prev_page <item[no_prev_page]>
                                - define cur_suf <player.chat_suffix.if_null[]>
                                # ~~~ Validate default icon ~~~ #
                                #   If the default icon isn't parseable to an item,
                                #   throws an error, but changes default icon to
                                #   diamond and continues from there
                                - if <[default_icon]> == nil:
                                    - narrate "<dark_red>Config has been misconfigured! Please report this to an admin. (default icon '<[default_icon]>' is not a valid item)"
                                    - define default_icon <item[diamond]>
                                # ~~~ Get list of all permissions user has ~~~ #
                                #   water, fire, air, earth and citizens are all formatted
                                #   so that they use the same icon. So each entry under
                                #   .people is just key:value. The key is also the perm node.
                                #   The value is the actual suffix value. For special, each
                                #   entry can have it's own icon. Therefore, the entry is
                                #   a map itself, with an icon entry and title entry, which
                                #   do what you expect them to. We count the suffix's as
                                #   well here, and icons that are a a tilde (~) are set to
                                #   the default icon. If the result is still not an actual
                                #   item (say it was mispelled or something), then it also
                                #   reverts to default, but will also throw an err in chat
                                #   saying which one is missing a valid icon. It will also
                                #   add an enchantment effect to the item representing the
                                #   suffix the player currently has.
                                - foreach <list[water|fire|air|earth|citizens|special]> as:section:
                                    - define is_special <[section].is[==].to[special]>
                                    - foreach <[config].data_key[<[section]><tern[<[is_special]>].pass[].fail[.people]>]>:
                                        - if <player.has_permission[tlb.title.<[key].unescaped>].global>:
                                            - define suffix_amount:++
                                            - define icon <tern[<[is_special]>].pass[<[value].get[icon]>].fail[<[config].data_key[<[section]>.icon]>]>
                                            - define item <tern[<[icon].is[!=].to[~]>].pass[<item[<[icon]>]||nil>].fail[<[default_icon]>]>
                                            - define lore <[is_special].if_true[<[value].get[lore].if_null[nil]>].if_false[<[config].data_key[<[section]>.lore].if_null[nil]>].if_null[nil].parsed>
                                            - define display <reset><tern[<[is_special]>].pass[<[value].get[title]>].fail[<[value]>].parsed>
                                            - if <[item]> == nil:
                                                - narrate "<dark_red>Config has been misconfigured! Please report this to an admin. (Icon '<[icon]>' is not a valid item)"
                                                - define item <[default_icon]>
                                            - define item <[item].with[display=<[display]><[lore].equals[nil].if_true[].if_false[;lore=<[lore]>]>]>
                                            - if <[display]> == <[cur_suf]>:
                                                - define item <[item].with[hides=enchants;enchantments=<map.with[protection].as[1]>]>
                                            - define item_list:->:<[item]>
                                # ~~~ Pad item list with air ~~~ #
                                #   Size must be a multiple of 9.
                                - repeat <element[9].sub[<[item_list].size.mod[9]>]>:
                                    - define item_list:->:<[air]>
                                - if <[item_list].size> > <[max_amount]>:
                                    # ~~~ Handle pagination ~~~ #
                                    #   When the amount of items in the list is greater than
                                    #   max amount, we need to split into pages. We determine
                                    #   The amount of pages by dividing and rounding up, meaning
                                    #   There will be one page at the end that has empty entries.
                                    #   We loop through, defining inv_contents by getting from
                                    #   1 - max_amount, or, if it's the last loop, 1 - list.size;
                                    #   then we include an extra row which has next page, prev
                                    #   page and remove suffix buttons. We insert the contents into
                                    #   a list called inv_pages for flagging later, then remove
                                    #   the items we just added from item list.
                                    - define loop_amt <[item_list].size.div[<[max_amount]>].round_up>
                                    - repeat <[loop_amt]>:
                                        - define to <tern[<[item_list].size.is[MORE].than[<[max_amount]>]>].pass[<[max_amount]>].fail[<[item_list].size>]>
                                        #Getting items...
                                        - define inv_contents <[item_list].get[1].to[<[to]>]>
                                        #Padding the final page...
                                        - if <[to]> != <[max_amount]>:
                                            - repeat <[max_amount].sub[<[to]>]> as:_:
                                                - define inv_contents:->:<[air]>
                                        #Adding pagination row...
                                        - define inv_contents <[inv_contents].include[<tern[<[value].is[==].to[1]>].pass[<[no_prev_page]>].fail[<[prev_page]>]>|<[air]>|<[air]>|<[air]>|<[remove]>|<[air]>|<[air]>|<[air]>|<tern[<[value].is[==].to[<[loop_amt]>]>].pass[<[no_next_page]>].fail[<[next_page]>]>]>
                                        - define inv_pages:->:<[inv_contents]>
                                        - define item_list <[item_list].remove[1].to[<[to]>]>
                                - else if <[item_list].size> < <[max_amount]> && <[item_list].size> > <[min_amount]>:
                                    # ~~~ Handle being in range ~~~ #
                                    #   If we're in range, the size of the gui can change.
                                    #   We've already padded with air, so we can take item_list
                                    #   and just add the final row that contains our remove
                                    #   button and false next and prev buttons. We still add
                                    #   it to a list so that way we can handle the results the
                                    #   the same whether there's 1 page or 10.
                                    - define inv_contents <[item_list].include[<[no_prev_page]>|<[air]>|<[air]>|<[air]>|<[remove]>|<[air]>|<[air]>|<[air]>|<[no_next_page]>]>
                                    - define inv_pages:->:<[inv_contents]>
                                - else:
                                    # ~~~ Handle being below min ~~~ #
                                    #   If we are below min range, we basically want to do the
                                    #   same thing as being in range, but also fill the list with
                                    #   empty slots until we reach our min. Then we add our final
                                    #   row and add to inv_pages.
                                    - define inv_contents <[item_list]>
                                    - repeat <[min_amount].sub[<[item_list].size>]>:
                                        - define inv_contents:->:<[air]>
                                    - define inv_contents <[inv_contents].include[<[no_prev_page]>|<[air]>|<[air]>|<[air]>|<[remove]>|<[air]>|<[air]>|<[air]>|<[no_next_page]>]>
                                    - define inv_pages:->:<[inv_contents]>
                                # ~~~ Flag, adjust, open ~~~ #
                                #   We adjust our generic inventory to be the size it needs
                                #   to be, and make the contents our first page. We then flag
                                #   the player with the inventory pages for pagination in the
                                #   click event. We also flag the current page which always
                                #   starts at one. Then we open the inventory.
                                - adjust <[generic_inv]> size:<[inv_pages].first.size>
                                - adjust <[generic_inv]> contents:<[inv_pages].first>
                                - flag player suffix.inv_pages:<[inv_pages]>
                                - flag player suffix.current_gui_page:1
                                - inventory open d:<[generic_inv]>
                            - else:
                                - narrate "<dark_red>Config has been misconfigured! Please report this to an admin. (Max is smaller than 1)"
                        - else:
                            - narrate "<dark_red>Config has been misconfigured! Please report this to an admin. (Min is smaller than 1)"
                    - else:
                        - narrate "<dark_red>Config has been misconfigured! Please report this to an admin. (Max is bigger than 6)"
                - else:
                  - narrate "<dark_red>Config has been misconfigured! Please report this to an admin. (Min is bigger than 6)"
            - else:
               - narrate "<dark_red>Config has been misconfigured! Please report this to an admin. (Min is bigger than max)"
        - else:
            - narrate "<dark_red>You do not have access to that command."

suffix_world:
    type: world
    debug: false
    events:
        on player drags in inventory:
            - inject locally change_suffix
        on player clicks in inventory:
            - if <context.action> == HOTBAR_SWAP:
                - determine cancelled
            - inject locally change_suffix
        on player closes inventory:
            - flag player suffix:!
    change_suffix:
        # ~~~ Check if suffix flag is set ~~~ #
        - if <player.has_flag[suffix]> && <context.clicked_inventory.list_contents> == <player.flag[suffix.inv_pages].get[<player.flag[suffix.current_gui_page]>]>:
            # ~~~ No takey the items ~~~ #
            - determine passively cancelled
            # ~~~ Defines ~~~ #
            - define config <script[suffix_selector_config]>
            - define script_name <context.item.script.name||nil>
            - define format <[config].data_key[gui.format].parsed><reset>
            - define flag <player.flag[suffix]>
            - define inv_pages <[flag].get[inv_pages]>
            - define cur_page <[flag].get[current_gui_page]>
            # ~~~ Check for nil script name ~~~ #
            #   If it's nil, then it's an item (or an empty slot),
            #   otherwise, it'll be a button that we want to handle.
            - if <[script_name]> != nil:
                - if <[script_name]> == remove_suffix:
                    # ~~~ Remove suffix, close inv, remove suffix flag ~~~ #
                    - inject locally remove_suffix
                    - narrate "<[format]> Your suffix has been removed."
                    - inventory close
                    - flag player suffix:!
                - else if <[script_name]> == next_page:
                    # ~~~ Index handling ~~~ #
                    #   This is true for next_page and prev_page. We want
                    #   to make sure that we don't go farther than is
                    #   possible, ie we don't want to go the 4th page when
                    #   there is only three pages. On next, we need to make
                    #   sure we haven't gone over, and on prev we want to
                    #   make sure we haven't gone under.
                    - define next_page_index <[cur_page].add[1]>
                    - define new_page_index <tern[<[next_page_index].is[MORE].than[<[inv_pages].size>]>].pass[<[inv_pages].size>].fail[<[next_page_index]>]>
                    - adjust <context.inventory> contents:<[inv_pages].get[<[new_page_index]>]>
                    - flag player suffix.current_gui_page:<[new_page_index]>
                - else if <[script_name]> == prev_page:
                    # ~~~ Index handling ~~~ #
                    - define next_page_index <[cur_page].sub[1]>
                    - define new_page_index <tern[<[next_page_index].is[LESS].than[1]>].pass[<[inv_pages].size>].fail[<[next_page_index]>]>
                    - adjust <context.inventory> contents:<[inv_pages].get[<[new_page_index]>]>
                    - flag player suffix.current_gui_page:<[new_page_index]>
            - else if <context.item.material.name> != air:
                # ~~~ Check and add suffix ~~~ #
                - inject locally remove_suffix
                - execute as_server "lp user <player.name> meta addsuffix 1 <&dq> <&8>[<context.item.display><&8>]<&dq>"
                - narrate "<[format]> Your suffix is now <context.item.display>."
                - inventory close
                - flag player suffix:!
    remove_suffix:
        - execute as_server "lp user <player.name> meta clear suffixes"

generic_inventory:
    type: inventory
    inventory: chest
    gui: true
    title: <reset>Suffix Selector
    size: 9

remove_suffix:
    type: item
    material: barrier
    display name: <reset>Remove Suffix

next_page:
    type: item
    material: lime_stained_glass_pane
    display name: <reset>Next Page

prev_page:
    type: item
    material: red_stained_glass_pane
    display name: <reset>Previous Page

no_next_page:
    type: item
    material: gray_stained_glass_pane
    display name: <reset>Next Page

no_prev_page:
    type: item
    material: gray_stained_glass_pane
    display name: <reset>Previous Page