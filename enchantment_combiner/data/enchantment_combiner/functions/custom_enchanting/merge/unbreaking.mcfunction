execute store result score $ench_a temp run data get storage enchantment_combiner:temp item.tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
execute store result score $ench_b temp run data get storage enchantment_combiner:temp enchantments[{id:"minecraft:unbreaking"}].lvl
execute if score $ench_b temp matches 1.. if score $ench_b temp <= $ench_a temp run data modify storage enchantment_combiner:temp remainders append from storage enchantment_combiner:temp enchantments[{id:"minecraft:unbreaking"}]
execute if score $ench_b temp > $ench_a temp store result storage enchantment_combiner:temp item.tag.Enchantments[{id:"minecraft:unbreaking"}].lvl short 1 run scoreboard players operation $ench_a temp > $ench_b temp
