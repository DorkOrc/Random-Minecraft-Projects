# store last position into arguments compound
scoreboard players operation .last_x scratch = @s last_x
scoreboard players operation .last_y scratch = @s last_y
scoreboard players operation .last_z scratch = @s last_z

# do calculation as tracker entity
execute positioned as @s as b8cc4258-783e-4776-9597-ac4e8b0deb54 run function speed_tracker:calculate_speeds/calculate

# store last position into scores
scoreboard players operation @s last_x = .current_x scratch
scoreboard players operation @s last_y = .current_y scratch
scoreboard players operation @s last_z = .current_z scratch

# store speed into score
scoreboard players operation @s speed = .speed scratch
