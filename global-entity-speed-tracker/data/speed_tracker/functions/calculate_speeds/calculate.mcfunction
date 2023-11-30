# store current position
tp ~ ~ ~
data modify storage speed_tracker:temp position set from entity @s Pos

# store position delta
$tp @s ~$(last_x) ~$(last_y) ~$(last_z)
data modify storage speed_tracker:temp delta set from entity @s Pos

# calculate delta magnitude
execute store result storage speed_tracker:global distance_matrix[0] float 0.015625 run data get storage speed_tracker:temp delta[0] 64
execute store result storage speed_tracker:global distance_matrix[4] float 0.015625 run data get storage speed_tracker:temp delta[1] 64
execute store result storage speed_tracker:global distance_matrix[8] float 0.015625 run data get storage speed_tracker:temp delta[2] 64
data modify entity @s transformation set from storage speed_tracker:global distance_matrix

# store speed
execute store result score .this speed run data get entity @s transformation.scale[0] 20

# teleport back to 0 0 0 so that it can be reselected again
tp 0. 0 0.
