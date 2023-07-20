# enchantment_combiner:process_item
tag @s add processed

tag @s[nbt={Item:{id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{}]}}}] add enchanted_book

scoreboard players set $is_tool temp 0
execute unless entity @s[nbt=!{Item:{id:"minecraft:wooden_sword"}},nbt=!{Item:{id:"minecraft:stone_sword"}},nbt=!{Item:{id:"minecraft:iron_sword"}},nbt=!{Item:{id:"minecraft:golden_sword"}},nbt=!{Item:{id:"minecraft:diamond_sword"}},nbt=!{Item:{id:"minecraft:netherite_sword"}}] store success score $is_tool temp run tag @s add is_sword
execute unless entity @s[nbt=!{Item:{id:"minecraft:wooden_shovel"}},nbt=!{Item:{id:"minecraft:stone_shovel"}},nbt=!{Item:{id:"minecraft:iron_shovel"}},nbt=!{Item:{id:"minecraft:golden_shovel"}},nbt=!{Item:{id:"minecraft:diamond_shovel"}},nbt=!{Item:{id:"minecraft:netherite_shovel"}}] store success score $is_tool temp run tag @s add is_shovel
execute unless entity @s[nbt=!{Item:{id:"minecraft:wooden_pickaxe"}},nbt=!{Item:{id:"minecraft:stone_pickaxe"}},nbt=!{Item:{id:"minecraft:iron_pickaxe"}},nbt=!{Item:{id:"minecraft:golden_pickaxe"}},nbt=!{Item:{id:"minecraft:diamond_pickaxe"}},nbt=!{Item:{id:"minecraft:netherite_pickaxe"}}] store success score $is_tool temp run tag @s add is_pickaxe
execute unless entity @s[nbt=!{Item:{id:"minecraft:wooden_axe"}},nbt=!{Item:{id:"minecraft:stone_axe"}},nbt=!{Item:{id:"minecraft:iron_axe"}},nbt=!{Item:{id:"minecraft:golden_axe"}},nbt=!{Item:{id:"minecraft:diamond_axe"}},nbt=!{Item:{id:"minecraft:netherite_axe"}}] store success score $is_tool temp run tag @s add is_axe
execute unless entity @s[nbt=!{Item:{id:"minecraft:wooden_hoe"}},nbt=!{Item:{id:"minecraft:stone_hoe"}},nbt=!{Item:{id:"minecraft:iron_hoe"}},nbt=!{Item:{id:"minecraft:golden_hoe"}},nbt=!{Item:{id:"minecraft:diamond_hoe"}},nbt=!{Item:{id:"minecraft:netherite_hoe"}}] store success score $is_tool temp run tag @s add is_hoe

execute unless entity @s[nbt=!{Item:{id:"minecraft:leather_boots"}},nbt=!{Item:{id:"minecraft:chainmail_boots"}},nbt=!{Item:{id:"minecraft:iron_boots"}},nbt=!{Item:{id:"minecraft:golden_boots"}},nbt=!{Item:{id:"minecraft:diamond_boots"}},nbt=!{Item:{id:"minecraft:netherite_boots"}}] store success score $is_tool temp run tag @s add is_boots
execute unless entity @s[nbt=!{Item:{id:"minecraft:leather_leggings"}},nbt=!{Item:{id:"minecraft:chainmail_leggings"}},nbt=!{Item:{id:"minecraft:iron_leggings"}},nbt=!{Item:{id:"minecraft:golden_leggings"}},nbt=!{Item:{id:"minecraft:diamond_leggings"}},nbt=!{Item:{id:"minecraft:netherite_leggings"}}] store success score $is_tool temp run tag @s add is_leggings
execute unless entity @s[nbt=!{Item:{id:"minecraft:leather_chestplate"}},nbt=!{Item:{id:"minecraft:chainmail_chestplate"}},nbt=!{Item:{id:"minecraft:iron_chestplate"}},nbt=!{Item:{id:"minecraft:golden_chestplate"}},nbt=!{Item:{id:"minecraft:diamond_chestplate"}},nbt=!{Item:{id:"minecraft:netherite_chestplate"}}] store success score $is_tool temp run tag @s add is_chestplate
execute unless entity @s[nbt=!{Item:{id:"minecraft:leather_helmet"}},nbt=!{Item:{id:"minecraft:chainmail_helmet"}},nbt=!{Item:{id:"minecraft:iron_helmet"}},nbt=!{Item:{id:"minecraft:golden_helmet"}},nbt=!{Item:{id:"minecraft:diamond_helmet"}},nbt=!{Item:{id:"minecraft:netherite_helmet"}},nbt=!{Item:{id:"minecraft:turtle_helmet"}}] store success score $is_tool temp run tag @s add is_helmet

execute unless entity @s[nbt=!{Item:{id:"minecraft:crossbow"}}] store success score $is_tool temp run tag @s add is_crossbow
execute unless entity @s[nbt=!{Item:{id:"minecraft:bow"}}] store success score $is_tool temp run tag @s add is_bow
execute unless entity @s[nbt=!{Item:{id:"minecraft:trident"}}] store success score $is_tool temp run tag @s add is_trident
execute unless entity @s[nbt=!{Item:{id:"minecraft:shears"}}] store success score $is_tool temp run tag @s add is_shears
execute unless entity @s[nbt=!{Item:{id:"minecraft:shield"}}] store success score $is_tool temp run tag @s add is_shield
execute unless entity @s[nbt=!{Item:{id:"minecraft:elytra"}}] store success score $is_tool temp run tag @s add is_elytra

execute if score $is_tool temp matches 1 run tag @s add is_tool
