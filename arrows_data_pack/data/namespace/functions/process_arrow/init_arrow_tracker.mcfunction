tag @s add arrow_tracker

tag @s add arrow_tracker_new
execute if score #arrow_type temp matches 1 if data storage namespace:temp username at @s summon item_display run function namespace:process_arrow/init_player_head
tag @s remove arrow_tracker_new

tp @s ~ ~ ~ 0 0

data modify entity @s transformation.translation set value [0f,-0.5f,0f]

item replace entity @s container.0 with white_stained_glass{CustomModelData:1}
execute store result entity @s item.tag.CustomModelData int 1 store result entity @s item.tag.arrow_type byte 1 run scoreboard players get #arrow_type temp 

ride @s mount @e[type=#arrows,distance=..0.0001,tag=self,limit=1]
