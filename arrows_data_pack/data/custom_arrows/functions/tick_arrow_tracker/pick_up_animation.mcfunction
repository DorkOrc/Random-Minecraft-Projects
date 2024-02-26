execute positioned ~-1.25 ~-1 ~-1.25 unless entity @e[type=player,gamemode=!spectator,dx=1.5,dy=1,dz=1.5,sort=nearest,limit=1] run return 0

tp @s ~ ~0.5 ~
execute positioned ~-1.25 ~-1 ~-1.25 positioned as @e[type=player,gamemode=!spectator,dx=1.5,dy=1,dz=1.5,sort=nearest,limit=1] run tp @s ~ ~1 ~
tag @s remove arrow_tracker
tag @s add arrow_animation
scoreboard players set .arrow_animating global 1

return 1
