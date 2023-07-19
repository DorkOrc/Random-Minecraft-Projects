execute as @e[type=interaction,tag=block_removal] run function block_removal:fn_1
execute as @a[tag=!linked] run function block_removal:fn_8
tag @a[tag=linked] remove linked
