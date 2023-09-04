execute store result score #arrow_type temp run data get entity @s item.tag.arrow_type

# normal (do nothing; only die if in entity)
execute if score #arrow_type temp matches 1 on vehicle run return 0

# creeper (explode)
execute if score #arrow_type temp matches 2 run summon tnt

# player (teleport random player)
execute if score #arrow_type temp matches 3 run tp @r[team=!psd] ~ ~ ~

# username (teleport target to arrow)
execute if score #arrow_type temp matches 4 on passengers run data modify storage namespace:temp uuid set from entity @s[type=item_display,tag=arrow_player_head] item.tag.target
execute if score #arrow_type temp matches 4 summon area_effect_cloud run function namespace:tick_arrow_tracker/teleport_user

execute on vehicle run kill
execute on passengers run kill @s[type=item_display,tag=arrow_player_head]
kill
