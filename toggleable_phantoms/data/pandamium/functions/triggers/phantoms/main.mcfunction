execute if score @s phantoms matches 1.. run function pandamium:triggers/phantoms/print_menu/main

execute if score @s phantoms matches ..-1 run function pandamium:triggers/phantoms/run_negative_input

scoreboard players reset @s phantoms
scoreboard players enable @s phantoms
