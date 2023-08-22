execute as @e[type=#arrows,tag=!processed] at @s run function namespace:process_arrow/main
execute as @e[type=item_display,tag=arrow_tracker] at @s run function namespace:tick_arrow_tracker/main
