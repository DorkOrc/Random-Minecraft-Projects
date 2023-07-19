data modify storage block_removal:temp uuid set from entity @s UUID
advancement revoke @s only block_removal:block_removal interact
execute at @s summon interaction run function block_removal:fn_9
