# ensure tracker entity exists
kill b8cc4258-783e-4776-9597-ac4e8b0deb54
execute in overworld run summon text_display 0. 0 0. {UUID: [I; -1194573224, 2017347446, -1785222066, -1962022060], Tags: ["speed_tracker"]}

# for each entity, calculate speed
execute in overworld as @e[tag=!speed_tracker] run function speed_tracker:calculate_speeds/as_entity
