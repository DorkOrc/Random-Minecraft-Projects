# tag
tag @s add arrow_mount

# item
data modify entity @s item merge from storage custom_arrows:temp arrow_type.mount_item
execute store result score .valid_item var run data get entity @s item.Count
execute store success score .valid_item var if score .valid_item var matches 1..

# visual
data merge entity @s {transformation:{scale:[0.5f,0.5f,0.5f]},item_display:"fixed"}
execute if data storage custom_arrows:temp arrow_type.mount_item.scale store result entity @s transformation.scale[] float 0.0005 run data get storage custom_arrows:temp arrow_type.mount_item.scale 1000
tp @s ~ ~ ~ 0 0
ride @s mount @e[type=item_display,tag=this.arrow_tracker,distance=..0.0001,limit=1]

# check for username and place player head or kill
execute if data storage custom_arrows:temp arrow_type.id run return run execute if score .valid_item var matches 0 run kill @s

tag @s add this.arrow_mount
function custom_arrows:process_arrow/get_target with storage custom_arrows:temp item
tag @s remove this.arrow_mount

execute unless data storage custom_arrows:temp arrow_type{id:"teleport_target"} run return run execute if score .valid_item var matches 0 run kill @s
data modify storage custom_arrows:temp target set from entity @s item.tag.SkullOwner.Name
execute on vehicle run data modify entity @s item.tag.target set from storage custom_arrows:temp target
