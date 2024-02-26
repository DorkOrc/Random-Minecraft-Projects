data modify storage custom_arrows:temp item set from entity @s item
data modify entity @s Rotation set value [0f,0f]

# get arrow type, and run associated arrow event (if applicable)
data remove storage custom_arrows:temp arrow_type
function custom_arrows:tick_arrow_tracker/get_arrow_type_data with storage custom_arrows:temp item.tag

# persistent arrow types
execute unless data storage custom_arrows:temp arrow_type on vehicle run return 0
execute if data storage custom_arrows:temp arrow_type{persistent:1b} on vehicle run return 0

# kill
execute on passengers run kill @s[type=item_display,tag=arrow_mount]
execute on vehicle run kill @s[type=#arrows]
execute unless function custom_arrows:tick_arrow_tracker/pick_up_animation run kill @s
