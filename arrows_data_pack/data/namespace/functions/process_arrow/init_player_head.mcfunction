tag @s add arrow_player_head

item replace entity @s container.0 with player_head

tag @s add arrow_player_head_new
scoreboard players set #different temp 1
execute as @a run function namespace:process_arrow/check_username
tag @s remove arrow_player_head_new

execute unless data storage namespace:temp uuid run kill
execute unless data storage namespace:temp uuid run return 0

scoreboard players set #arrow_type temp 4

tp @s ~ ~ ~ 0 0

data merge entity @s {transformation:{scale:[0.5f,0.5f,0.5f]},item_display:"fixed"}
data modify entity @s item.tag.target set from storage namespace:temp uuid

ride @s mount @e[type=item_display,distance=..0.0001,tag=arrow_tracker_new,limit=1]
