tag @s add processed

data remove storage custom_arrows:temp origin_nbt
data remove storage custom_arrows:temp item

# fail if origin was not a player
execute on origin if entity @s[type=!player] run return 0

# get bow item (fail if no item is found)
execute on origin run data modify storage custom_arrows:temp origin_nbt set from entity @s[type=player] {}
execute if data storage custom_arrows:temp origin_nbt.SelectedItem{id:"minecraft:crossbow"} run data modify storage custom_arrows:temp item set value {}
execute unless data storage custom_arrows:temp item if data storage custom_arrows:temp origin_nbt.SelectedItem{id:"minecraft:bow"} run data modify storage custom_arrows:temp item set from storage custom_arrows:temp origin_nbt.SelectedItem
execute unless data storage custom_arrows:temp item if data storage custom_arrows:temp origin_nbt.Inventory[{Slot:-106b,id:"minecraft:bow"}] run data modify storage custom_arrows:temp item set from storage custom_arrows:temp origin_nbt.Inventory[{Slot:-106b}]
execute unless data storage custom_arrows:temp item run return 0

# get item plain name (fail if no name is found)
data modify storage custom_arrows:temp item.name set value ""
data modify storage custom_arrows:temp item_name_json_format_check set value ""
data modify storage custom_arrows:temp item_name_json_format_check set string storage custom_arrows:temp item.tag.display.Name 0 9
execute if data storage custom_arrows:temp {item_name_json_format_check:'{"text":"'} run data modify storage custom_arrows:temp item.name set string storage custom_arrows:temp item.tag.display.Name 9 -2
execute unless data storage custom_arrows:temp {item_name_json_format_check:'{"text":"'} run data modify storage custom_arrows:temp item.name set string storage custom_arrows:temp item.tag.display.Name 1 -1
execute if data storage custom_arrows:temp item{name:""} run return 0

# check bow type
data modify storage custom_arrows:temp arrow_type set from storage custom_arrows:global default_arrow_type
function custom_arrows:process_arrow/get_arrow_type with storage custom_arrows:temp item

tag @s add this.arrow
execute at @s summon item_display run function custom_arrows:process_arrow/init_tracker
tag @s remove this.arrow
