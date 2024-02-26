data remove storage custom_arrows:temp vehicle_nbt
execute on vehicle run data modify storage custom_arrows:temp vehicle_nbt set from entity @s[type=#arrows,nbt=!{inGround:1b}]

# do action
execute unless data storage custom_arrows:temp vehicle_nbt run data modify entity @s Rotation set from entity @s item.tag.motion_rotation
execute unless data storage custom_arrows:temp vehicle_nbt at @s positioned ~ ~-0.5 ~ run return run function custom_arrows:tick_arrow_tracker/action

# continue flying
execute summon marker run function custom_arrows:tick_arrow_tracker/get_rotation_transformation
data modify entity @s {} merge from storage custom_arrows:temp tracker_display_data
execute on passengers run data modify entity @s[type=item_display,tag=arrow_mount] {} merge from storage custom_arrows:temp mount_display_data
