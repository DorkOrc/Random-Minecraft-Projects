# tag
tag @s add arrow_tracker

# visual
item replace entity @s container.0 with white_stained_glass{CustomModelData:1}
data modify entity @s item.tag.CustomModelData set from storage custom_arrows:temp arrow_type.arrow_model
data merge entity @s {transformation:{translation:[0f,-0.5f,0f]},teleport_duration:1}
tp @s ~ ~ ~ 0 0
ride @s mount @e[type=#arrows,tag=this.arrow,distance=..0.0001,sort=arbitrary,limit=1]

# check for username, and optionally create head
tag @s add this.arrow_tracker
execute at @s summon item_display run function custom_arrows:process_arrow/init_mount
tag @s remove this.arrow_tracker

data modify entity @s item.tag.arrow_type set from storage custom_arrows:temp arrow_type.id
