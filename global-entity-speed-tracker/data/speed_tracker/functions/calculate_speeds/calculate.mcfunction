# store current position
tp ~ ~ ~
execute store result score .current_x scratch store result score .delta_x scratch run data get entity @s Pos[0] 64
execute store result score .current_y scratch store result score .delta_y scratch run data get entity @s Pos[1] 64
execute store result score .current_z scratch store result score .delta_z scratch run data get entity @s Pos[2] 64

# calculate delta and its magnitude
execute store result storage speed_tracker:global distance_matrix[0] float 0.015625 run scoreboard players operation .delta_x scratch -= .last_x scratch
execute store result storage speed_tracker:global distance_matrix[4] float 0.015625 run scoreboard players operation .delta_y scratch -= .last_y scratch
execute store result storage speed_tracker:global distance_matrix[8] float 0.015625 run scoreboard players operation .delta_z scratch -= .last_z scratch
data modify entity @s transformation set from storage speed_tracker:global distance_matrix

# store speed
execute store result score .speed scratch run data get entity @s transformation.scale[0] 20

# teleport back to 0 0 0 so that it can be reselected again
tp 0. 0 0.
