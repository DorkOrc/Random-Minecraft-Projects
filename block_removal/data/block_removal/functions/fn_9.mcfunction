tag @s add block_removal
team join block_removal @s
data merge entity @s {CustomName:'{"text":"interaction"}',height:1.02,width:1.02}
tag @s add vehicle
execute summon area_effect_cloud run function block_removal:fn_10
tag @s remove vehicle
