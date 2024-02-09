execute if entity @s[gamemode=spectator] run return run tellraw @s [{"text":"[Item Font]","color":"dark_red"},{"text":" You cannot use this trigger in spectator mode!","color":"red"}]

# menu
execute if score @s item_font matches 101 run return run function pandamium:triggers/item_font/print_menu/gradients
execute if score @s item_font matches 1.. run return run function pandamium:triggers/item_font/print_menu/normal

# run
function pandamium:triggers/item_font/run_negative_input
