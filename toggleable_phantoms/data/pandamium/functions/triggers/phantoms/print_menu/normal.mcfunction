execute unless score @s pandamium.optn.disable_phantoms matches 1 run tellraw @s [{"text":"Phantom Spawning: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Phantom Spawning","bold":true},{"text":"\nIf On, phantoms will spawn\nabove you at night unless you\nhave slept recently.","color":"gray"},{"text":"\n• On (Default)\n• Off","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger phantoms set -3"}},{"text":"On","color":"yellow","bold":true}]
execute if score @s pandamium.optn.disable_phantoms matches 1 run tellraw @s [{"text":"Phantom Spawning: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Phantom Spawning","bold":true},{"text":"\nIf On, phantoms will spawn\nabove you at night unless you\nhave slept recently.","color":"gray"},{"text":"\n• On (Default)\n• Off","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger phantoms set -3"}},{"text":"Off","color":"yellow","bold":true}]
