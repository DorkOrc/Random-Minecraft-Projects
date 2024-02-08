execute if predicate pandamium:environment/is_night in overworld as @a[x=0,predicate=pandamium:has_insomnia,predicate=pandamium:above_sea_level,gamemode=!spectator,gamemode=!creative] unless score @s pandamium.optn.disable_phantoms matches 1 positioned as @s positioned over motion_blocking positioned as @s[dy=1000000] rotated ~ 0 run function pandamium:impl/phantoms/spawn

schedule function pandamium:impl/phantoms/loop 120s
