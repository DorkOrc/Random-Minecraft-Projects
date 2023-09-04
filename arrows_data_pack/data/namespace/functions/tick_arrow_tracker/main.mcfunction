data remove storage namespace:temp vehicle_nbt
execute on vehicle run data modify storage namespace:temp vehicle_nbt set from entity @s[nbt=!{inGround:1b}]

execute unless data storage namespace:temp vehicle_nbt at @s run function namespace:tick_arrow_tracker/action
execute unless data storage namespace:temp vehicle_nbt run return 0

execute summon marker run function namespace:tick_arrow_tracker/get_rotation_transformation
data modify entity @s transformation merge from storage namespace:temp transformation
execute on passengers run data modify entity @s[type=item_display,tag=arrow_player_head] transformation merge from storage namespace:temp transformation2
