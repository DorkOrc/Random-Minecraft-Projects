# enchantment_combiner:custom_enchanting/append_enchantments
data modify storage enchantment_combiner:temp remainders set value []
data modify storage enchantment_combiner:temp item set from entity @s Item
execute unless data storage enchantment_combiner:temp item.tag.Enchantments run data modify storage enchantment_combiner:temp item.tag.Enchantments set value []

# repeat for all enchantments {
execute if data storage enchantment_combiner:temp enchantments[{id:"minecraft:fire_aspect"}] run function enchantment_combiner:custom_enchanting/merge/fire_aspect
execute if data storage enchantment_combiner:temp enchantments[{id:"minecraft:unbreaking"}] run function enchantment_combiner:custom_enchanting/merge/unbreaking
execute if data storage enchantment_combiner:temp enchantments[{id:"dork:unbreakable"}] run function enchantment_combiner:custom_enchanting/merge/unbreakable
# }

execute store success score $successfully_merged temp run data modify storage enchantment_combiner:temp enchantments set from storage enchantment_combiner:temp remainders
data remove storage enchantment_combiner:temp enchantments

data modify entity @s Item set from storage enchantment_combiner:temp item

execute if score $successfully_merged temp matches 1 run function enchantment_combiner:custom_enchanting/on_success

