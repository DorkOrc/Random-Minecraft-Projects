scoreboard players set $owner_exists temp 0
scoreboard players set $destroy_block temp 0
execute on passengers on origin if entity @s[type=player,tag=!linked] run function block_removal:fn_2
execute if score $owner_exists temp matches 0 run function block_removal:fn_6
execute if score $owner_exists temp matches 1 run function block_removal:fn_7
