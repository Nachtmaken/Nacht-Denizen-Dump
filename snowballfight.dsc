snowball_handler:
  type: world
  events:
    on player breaks snow with:snow_shovel_item in:snowball:
    - drop snowball quantity:1 <player.location>
    - determine cancelled
    
    on entity damaged by entity:
    #- if <context.cause> != projectile:
    #  - determine cancelled
   # - else:
      #- determine <player.armor_bonus.div[15].sub[1.5].mul[-1]>
    #  - determine 1
    
    #- flag server tournamentOpened:1
    
   # on player dies:
   # - determine passively cancelled
   # - drop snowball quantity:16 <player.location>
   # - wait 3t
    
   # - equip <player> head:air chest:air legs:air boots:air
   # - take candy_cane_shiv quantity:<player.inventory.quantity_item[candy_cane_shiv]> from:<player.inventory>
   # - take snow_shovel_item quantity:<player.inventory.quantity_item[snow_shovel_item]> from:<player.inventory>
   # - take snowball from:<player.inventory> quantity:<player.inventory.quantity_item[snowball]>
    
  #  - playeffect effect:FIREWORKS_SPARK at:<player.location.add[0,2,0]> quantity:50 offset:1.0
   # - playsound <player.location> sound:BLOCK_ANCIENT_DEBRIS_HIT
  #  - teleport <player> <l@-2,88,-47,world>
    
    
    on player right clicks entity with:candy_cane_shiv:
    - hurt <context.entity> 20
    - playeffect effect:FIREWORKS_SPARK at:<player.location.add[0,2,0]> quantity:50 offset:1.0
    - playsound <player.location> sound:BLOCK_ANCIENT_DEBRIS_HIT
    - take candy_cane_shiv quantity:1 from:<player.inventory>
    
    on snowball hits tnt:
    - explode power:2 <context.location>
    - modifyblock <context.location> snow

equip_test:
	type: command
	name: equip_test
	description: Choose your element!
	usage: /equip_test
	script:
    - narrate "<&b><&l>How cozy! Enjoy your wooly outfit!"
    - playeffect effect:FIREWORKS_SPARK at:<player.location.add[0,2,0]> quantity:50 offset:1.0
    - equip <player> head:wool_hat chest:wool_chestplate legs:wool_leggings boots:wool_boots

snow_shovel_item:
  type: item
  material: netherite_shovel
  display name: <&b><&l>Snow Shovel
  lore:
  - '<&6>A shovel, to shovel snow!'
  mechanisms:
      hides:
      - ENCHANTS
  enchantments:
  - luck:1

wool_boots:
  type: item
  material: leather_boots
  display name: <&b><&l>Wooly Boots
  lore:
  - '<&6>Burr... It<&sq>s cold in here!'
  mechanisms:
      hides:
      - ENCHANTS
  enchantments:
  - luck:1
  
wool_leggings:
  type: item
  material: leather_leggings
  display name: <&b><&l>Wooly Leggings
  lore:
  - '<&6>Burr... It<&sq>s cold in here!'
  mechanisms:
      hides:
      - ENCHANTS
  enchantments:
  - luck:1

wool_hat:
  type: item
  material: leather_helmet
  display name: <&b><&l>Wooly Hat
  lore:
  - '<&6>Burr... It<&sq>s cold in here!'
  mechanisms:
      hides:
      - ENCHANTS
  enchantments:
  - luck:1
  
wool_chestplate:
  type: item
  material: leather_chestplate
  display name: <&b><&l>Wooly Jacket
  lore:
  - '<&6>Burr... It<&sq>s cold in here!'
  mechanisms:
      hides:
      - ENCHANTS
  enchantments:
  - luck:1
  
candy_cane_shiv:
  type: item
  material: stick
  display name: <&b><&l>Candy Cane Shiv
  lore:
  - '<&6>Stabby, stabby, but delicious!'
  mechanisms:
      hides:
      - ENCHANTS
  enchantments:
  - luck:1