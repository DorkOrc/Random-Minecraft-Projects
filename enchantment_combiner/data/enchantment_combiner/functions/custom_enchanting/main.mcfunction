# enchantment_combiner:custom_enchanting/main
data modify storage enchantment_combiner:temp enchantments set from entity @s Item.tag.StoredEnchantments
data modify storage enchantment_combiner:temp enchantments append from entity @s Item.tag.dork.stored_custom_enchantments[]
execute as @e[type=item,tag=is_tool,distance=..0.5,limit=1,sort=nearest] run function enchantment_combiner:custom_enchanting/append_enchantments
execute unless data storage enchantment_combiner:temp enchantments unless data storage enchantment_combiner:temp remainders[0] run kill
execute unless data storage enchantment_combiner:temp enchantments if data storage enchantment_combiner:temp remainders[0] run data modify entity @s Item.tag.StoredEnchantments set from storage enchantment_combiner:temp remainders
