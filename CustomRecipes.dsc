NameTag:
      type: item
      material: name_tag
      display name: Name Tag
      recipes:
       1:
            # The type can be: shaped, shapeless, stonecutting, furnace, blast, smoker, campfire, or smithing.
            # | All recipes must include this key!
            type: shaped
            # The recipe can optionally have a custom internal recipe ID (for recipe books).
            # If not specified, will be of the form "<type>_<script.name>_<id>" where ID is the recipe list index (starting at 1, counting up).
            # IDs will always have the namespace "denizen". So, for the below, the full ID is "denizen:my_custom_item_id"
            # Note that most users should not set a custom ID. If you choose to set a custom one, be careful to avoid duplicates or invalid text.
            # Note that the internal rules for Recipe IDs are very strict (limited to "a-z", "0-9", "/", ".", "_", or "-").
            # | Most recipes should exclude this key.
            recipe_id: nametag_other
            # You must specify the input for the recipe. The below is a sample of a 3x3 shaped recipe. Other recipe types have a different format.
            # You are allowed to have non-3x3 shapes (can be any value 1-3 x 1-3, so for example 1x3, 2x1, and 2x2 are fine).
            # For an empty slot, use "air".
            # By default, items require an exact match. For a material-based match, use the format "material:MaterialNameHere" like "material:stick".
            # To make multiple different items match for any slot, just separate them with slashes, like "stick/stone".
            # To match multiple materials, use "material:a/b/c".
            # You can also make a dynamic matcher using '*', like "material:*_log" to match any log block,
            # or 'test_*' to match any item script that has name starting with 'test_'.
            # Note that to require multiple of an item as an input, the only option is to use multiple slots.
            # A single slot cannot require a quantity of items, as that is not part of the minecraft recipe system.
            # | All recipes must include this key!
            input:
            - |iron_ingot|string
            - |Paper|iron_ingot
            - Paper|ItemTag|