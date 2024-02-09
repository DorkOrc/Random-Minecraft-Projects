execute as @a[scores={item_font=1..},limit=1] at @s run function pandamium:triggers/item_font/main
execute as @a[scores={item_font=..-1},limit=1] at @s run function pandamium:triggers/item_font/main

execute as @a[scores={sign_font=1..},limit=1] at @s run function pandamium:triggers/sign_font/main
execute as @a[scores={sign_font=..-1},limit=1] at @s run function pandamium:triggers/sign_font/main
