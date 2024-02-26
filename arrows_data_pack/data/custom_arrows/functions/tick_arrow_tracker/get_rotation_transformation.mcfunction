kill

data modify storage custom_arrows:temp tracker_display_data.transformation set value {left_rotation:{axis:[0f,1f,0f],angle:0f},right_rotation:{axis:[1f,0f,0f],angle:0f}}
data modify storage custom_arrows:temp mount_display_data.transformation set value {left_rotation:{axis:[0f,1f,0f],angle:0f},right_rotation:{axis:[1f,0f,0f],angle:0f},translation:[0f,0f,0f]}

data modify entity @s Pos set from storage custom_arrows:temp vehicle_nbt.Motion
execute positioned 0. 0 0. facing entity @s feet run tp @s ~ ~ ~ ~ ~

data modify storage custom_arrows:temp tracker_display_data.item.tag.motion_rotation set from entity @s Rotation
execute store result storage custom_arrows:temp tracker_display_data.transformation.left_rotation.angle float -0.00001745329251 store result storage custom_arrows:temp mount_display_data.transformation.left_rotation.angle float -0.00001745329251 run data get storage custom_arrows:temp tracker_display_data.item.tag.motion_rotation[0] 1000
execute store result storage custom_arrows:temp tracker_display_data.transformation.right_rotation.angle float 0.00001745329251 store result storage custom_arrows:temp mount_display_data.transformation.right_rotation.angle float 0.00001745329251 run data get storage custom_arrows:temp tracker_display_data.item.tag.motion_rotation[1] 1000

execute positioned 0. -0.5 0. rotated as @s run tp @s ^ ^ ^0.4
execute store result storage custom_arrows:temp mount_display_data.transformation.translation[0] float 0.001 run data get entity @s Pos[0] 1000
execute store result storage custom_arrows:temp mount_display_data.transformation.translation[1] float 0.001 run data get entity @s Pos[1] 1000
execute store result storage custom_arrows:temp mount_display_data.transformation.translation[2] float 0.001 run data get entity @s Pos[2] 1000
