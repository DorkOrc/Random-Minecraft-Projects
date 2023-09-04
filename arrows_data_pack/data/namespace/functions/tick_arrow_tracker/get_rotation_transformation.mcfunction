kill

data modify entity @s Pos set from storage namespace:temp vehicle_nbt.Motion
tp @s 0. 0 0. facing entity @s feet

data modify storage namespace:temp transformation set value {left_rotation:{axis:[0f,1f,0f],angle:0f},right_rotation:{axis:[1f,0f,0f],angle:0f}}
data modify storage namespace:temp transformation2 set value {left_rotation:{axis:[0f,1f,0f],angle:0f},right_rotation:{axis:[1f,0f,0f],angle:0f},translation:[0f,0f,0f]}

execute store result storage namespace:temp transformation.left_rotation.angle float -0.00001745329251 store result storage namespace:temp transformation2.left_rotation.angle float -0.00001745329251 run data get entity @s Rotation[0] 1000
execute store result storage namespace:temp transformation.right_rotation.angle float 0.00001745329251 store result storage namespace:temp transformation2.right_rotation.angle float 0.00001745329251 run data get entity @s Rotation[1] 1000

execute rotated as @s positioned 0.0 -0.5 0.0 run tp @s ^ ^ ^0.4
execute store result storage namespace:temp transformation2.translation[0] float 0.001 run data get entity @s Pos[0] 1000
execute store result storage namespace:temp transformation2.translation[1] float 0.001 run data get entity @s Pos[1] 1000
execute store result storage namespace:temp transformation2.translation[2] float 0.001 run data get entity @s Pos[2] 1000
