execute store result score $ench_a temp run data get storage enchantment_combiner:temp item.tag.Unbreakable
execute store result score $ench_b temp run data get storage enchantment_combiner:temp enchantments[{id:"dork:unbreakable"}].lvl
execute if score $ench_b temp matches 1.. if score $ench_b temp <= $ench_a temp run data modify storage enchantment_combiner:temp remainders append from storage enchantment_combiner:temp enchantments[{id:"dork:unbreakable"}]
execute if score $ench_b temp > $ench_a temp store result storage enchantment_combiner:temp item.tag.Unbreakable short 1 run scoreboard players operation $ench_a temp > $ench_b temp
