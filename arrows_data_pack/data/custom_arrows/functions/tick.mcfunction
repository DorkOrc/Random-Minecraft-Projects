execute as @e[type=#arrows,tag=!processed] at @s run function custom_arrows:process_arrow/main

execute if score .arrow_animating global matches 1 run kill @e[type=item_display,tag=arrow_animation]
scoreboard players set .arrow_animating global 0

execute as @e[type=item_display,tag=arrow_tracker] at @s run function custom_arrows:tick_arrow_tracker/main
