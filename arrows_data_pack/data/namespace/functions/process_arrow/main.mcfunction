tag @s add processed

data remove storage namespace:temp origin_nbt
data remove storage namespace:temp item

# get bow item (fail if no)
execute on origin run data modify storage namespace:temp origin_nbt set from entity @s[type=player]
execute if data storage namespace:temp origin_nbt.SelectedItem{id:"minecraft:crossbow"} run data modify storage namespace:temp item set value {}
execute unless data storage namespace:temp item if data storage namespace:temp origin_nbt.SelectedItem{id:"minecraft:bow"} run data modify storage namespace:temp item set from storage namespace:temp origin_nbt.SelectedItem
execute unless data storage namespace:temp item if data storage namespace:temp origin_nbt.Inventory[{Slot:-106b,id:"minecraft:bow"}] run data modify storage namespace:temp item set from storage namespace:temp origin_nbt.Inventory[{Slot:-106b}]

# check bow type
scoreboard players set #arrow_type temp 1
execute if data storage namespace:temp item.tag.display{Name:'{"text":"Creeper"}'} run scoreboard players set #arrow_type temp 2
execute if data storage namespace:temp item.tag.display{Name:'{"text":"Player"}'} run scoreboard players set #arrow_type temp 3

tag @s add self
execute at @s summon item_display run function namespace:process_arrow/init_arrow_tracker
tag @s remove self
