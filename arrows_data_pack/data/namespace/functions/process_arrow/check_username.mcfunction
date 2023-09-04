execute if score #different temp matches 0 run return 0

loot replace entity @e[type=item_display,tag=arrow_player_head_new,distance=..0.001,limit=1] container.0 loot namespace:player_head

data modify storage namespace:temp compare set from storage namespace:temp username
execute store success score #different temp run data modify storage namespace:temp compare set from entity @e[type=item_display,tag=arrow_player_head_new,distance=..0.001,limit=1] item.tag.SkullOwner.Name


execute if score #different temp matches 0 run data modify storage namespace:temp uuid set from entity @s UUID
