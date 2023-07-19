scoreboard players set $owner_exists temp 1
tag @s add linked
execute store success score $destroy_block temp run advancement revoke @s only block_removal:block_removal interact
execute at @s anchored eyes positioned ^ ^ ^ summon marker run function block_removal:fn_3
