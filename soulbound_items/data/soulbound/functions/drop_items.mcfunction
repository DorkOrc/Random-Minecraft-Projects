scoreboard players reset @s die

execute unless entity @s[gamemode=!creative,gamemode=!spectator] run return 0

execute store result score $keepinventory temp run gamerule keepInventory
execute if score $keepinventory temp matches 0 run return 0

execute unless loaded 29999999 0 29999999 run tellraw @s [{"text":"Chunk [1874999,1874999] in this dimension was not loaded. Try running:\n","color":"red"},[{"text":"/execute in ","color":"gray","clickEvent":{"action":"suggest_command","value":"/execute in <dimension> forceload add 29999999 29999999"}},{"nbt":"Dimension","entity":"@s"}," run forceload add 29999999 29999999"],"."]
execute unless loaded 29999999 0 29999999 run return 0

data modify storage soulbound:temp player_nbt set from entity @s
fill 29999999 0 29999999 29999999 1 29999999 yellow_shulker_box

# move inventory to shulker boxes
data modify block 29999999 0 29999999 Items set from storage soulbound:temp player_nbt.Inventory
item replace block 29999999 1 29999999 container.0 from entity @s container.27
item replace block 29999999 1 29999999 container.1 from entity @s container.28
item replace block 29999999 1 29999999 container.2 from entity @s container.29
item replace block 29999999 1 29999999 container.3 from entity @s container.30
item replace block 29999999 1 29999999 container.4 from entity @s container.31
item replace block 29999999 1 29999999 container.5 from entity @s container.32
item replace block 29999999 1 29999999 container.6 from entity @s container.33
item replace block 29999999 1 29999999 container.7 from entity @s container.34
item replace block 29999999 1 29999999 container.8 from entity @s container.35
item replace block 29999999 1 29999999 container.9 from entity @s weapon.offhand
item replace block 29999999 1 29999999 container.10 from entity @s armor.head
item replace block 29999999 1 29999999 container.11 from entity @s armor.chest
item replace block 29999999 1 29999999 container.12 from entity @s armor.legs
item replace block 29999999 1 29999999 container.13 from entity @s armor.feet

# backup shulker boxes
data modify storage soulbound:temp inventory_groups set value [[],[]]
data modify storage soulbound:temp inventory_groups[0] set from block 29999999 0 29999999 Items
data modify storage soulbound:temp inventory_groups[1] set from block 29999999 1 29999999 Items

# remove all non-soulbound items
data modify block 29999999 0 29999999 Items[].tag.not_soulbound set value 1b
data modify block 29999999 0 29999999 Items[{tag:{soulbound:1b}}].tag.not_soulbound set value 0b
data remove block 29999999 0 29999999 Items[{tag:{not_soulbound:1b}}]
data remove block 29999999 0 29999999 Items[].tag.not_soulbound

data modify block 29999999 1 29999999 Items[].tag.not_soulbound set value 1b
data modify block 29999999 1 29999999 Items[{tag:{soulbound:1b}}].tag.not_soulbound set value 0b
data remove block 29999999 1 29999999 Items[{tag:{not_soulbound:1b}}]
data remove block 29999999 1 29999999 Items[].tag.not_soulbound

# return soulbound items
loot replace entity @s container.0 27 mine 29999999 0 29999999 air{drop_contents:1b}
loot replace entity @s container.27 9 mine 29999999 1 29999999 air{drop_contents:1b}
item replace entity @s weapon.offhand from block 29999999 1 29999999 container.9
item replace entity @s armor.head from block 29999999 1 29999999 container.10
item replace entity @s armor.chest from block 29999999 1 29999999 container.11
item replace entity @s armor.legs from block 29999999 1 29999999 container.12
item replace entity @s armor.feet from block 29999999 1 29999999 container.13

# load shulker backups
data modify block 29999999 0 29999999 Items set from storage soulbound:temp inventory_groups[0]
data modify block 29999999 1 29999999 Items set from storage soulbound:temp inventory_groups[1]

# remove soulbound and vanishing items
data remove block 29999999 0 29999999 Items[{tag:{Enchantments:[{id:"minecraft:vanishing_curse"}]}}]
data remove block 29999999 0 29999999 Items[{tag:{soulbound:1b}}]
data remove block 29999999 1 29999999 Items[{tag:{Enchantments:[{id:"minecraft:vanishing_curse"}]}}]
data remove block 29999999 1 29999999 Items[{tag:{soulbound:1b}}]

# drop remaining items
loot spawn ~ ~ ~ mine 29999999 0 29999999 air{drop_contents:1b}
loot spawn ~ ~ ~ mine 29999999 1 29999999 air{drop_contents:1b}

# approximate experience orb drops
execute store result score $levels temp run data get storage soulbound:temp player_nbt.XpLevel
execute if score $levels temp matches 15.. run scoreboard players set $levels temp 14
xp set @s 0 levels
xp set @s 0 points
execute if score $levels temp matches 8.. at @s run summon experience_orb ~ ~ ~ {Value:56}
execute if score $levels temp matches 8.. run scoreboard players remove $levels temp 8
execute if score $levels temp matches 4.. at @s run summon experience_orb ~ ~ ~ {Value:28}
execute if score $levels temp matches 4.. run scoreboard players remove $levels temp 4
execute if score $levels temp matches 2.. at @s run summon experience_orb ~ ~ ~ {Value:14}
execute if score $levels temp matches 2.. run scoreboard players remove $levels temp 2
execute if score $levels temp matches 1.. at @s run summon experience_orb ~ ~ ~ {Value:7}
execute if score $levels temp matches 1.. run scoreboard players remove $levels temp 1
