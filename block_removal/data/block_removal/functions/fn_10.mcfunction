tag @s add block_removal
team join block_removal @s
data merge entity @s {CustomName:'{"text":"aec_link"}',Duration:2147483647}
data modify entity @s Owner set from storage block_removal:temp uuid
ride @s mount @e[type=interaction,tag=vehicle,distance=..0.001,limit=1,sort=nearest]
