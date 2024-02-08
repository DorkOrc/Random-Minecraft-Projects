scoreboard players set <valid_option> pandamium.variable 0
execute if score @s phantoms matches -3..-3 run scoreboard players set <valid_option> pandamium.variable 1

execute if score <valid_option> pandamium.variable matches 0 run tellraw @s [{"text":"[Phantoms]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
execute if score <valid_option> pandamium.variable matches 0 run return 0

execute if score @s phantoms matches -3..-3 run function pandamium:triggers/phantoms/do_change
