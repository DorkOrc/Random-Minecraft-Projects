# store last position into arguments compound
execute store result storage speed_tracker:global arguments.last_x float -0.015625 run scoreboard players get @s last_x
execute store result storage speed_tracker:global arguments.last_y float -0.015625 run scoreboard players get @s last_y
execute store result storage speed_tracker:global arguments.last_z float -0.015625 run scoreboard players get @s last_z

# do calculation as tracker entity
execute positioned as @s as b8cc4258-783e-4776-9597-ac4e8b0deb54 run function speed_tracker:calculate_speeds/calculate with storage speed_tracker:global arguments

# store last position into scores
execute store result score @s last_x run data get storage speed_tracker:temp position[0] 64
execute store result score @s last_y run data get storage speed_tracker:temp position[1] 64
execute store result score @s last_z run data get storage speed_tracker:temp position[2] 64

# store speed into score
scoreboard players operation @s speed = .this speed
