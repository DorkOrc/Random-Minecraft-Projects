execute if score $destroy_block temp matches 1 at @s run setblock ~ ~0.02 ~ air
data modify entity @s Pos set from storage block_removal:temp position
execute at @s align xyz run tp @s ~.5 ~-0.01 ~.5
