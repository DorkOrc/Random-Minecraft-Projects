# arguments: name

$execute if entity $(name) run data modify storage custom_arrows:temp arrow_type.id set value "teleport_target"
$execute as $(name) run loot replace entity @e[type=item_display,tag=this.arrow_mount,distance=..0.001,limit=1] container.0 loot custom_arrows:player_head
