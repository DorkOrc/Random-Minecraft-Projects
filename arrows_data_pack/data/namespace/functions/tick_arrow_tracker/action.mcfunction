execute store result score #arrow_type temp run data get entity @s item.tag.arrow_type

# normal (do nothing; only die if in entity)
execute if score #arrow_type temp matches 1 on vehicle run return 0

# creeper (explode)
execute if score #arrow_type temp matches 2 run summon tnt

# player (teleport random player)
execute if score #arrow_type temp matches 3 run tp @r[team=!psd] ~ ~ ~


execute on vehicle run kill
kill
