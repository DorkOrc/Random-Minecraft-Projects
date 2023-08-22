kill

data modify entity @s Pos set from storage namespace:temp vehicle_nbt.Motion
tp @s 0. 0 0. facing entity @s feet

data modify storage namespace:temp transformation set value {left_rotation:{axis:[0f,1f,0f],angle:0f},right_rotation:{axis:[1f,0f,0f],angle:0f}}
execute store result storage namespace:temp transformation.left_rotation.angle float -0.00001745329251 run data get entity @s Rotation[0] 1000
execute store result storage namespace:temp transformation.right_rotation.angle float 0.00001745329251 run data get entity @s Rotation[1] 1000
