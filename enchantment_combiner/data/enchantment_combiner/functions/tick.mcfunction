# namespace:tick
execute as @e[type=item,tag=!processed] run function enchantment_combiner:process_item
execute as @e[type=item,tag=enchanted_book] at @s if block ~ ~-0.1 ~ #anvil run function enchantment_combiner:custom_enchanting/main
