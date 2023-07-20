clone ~ ~ ~ ~ ~ ~ 0 0 0

# destroy cloned furnace, and create new furnace
data remove block 0 0 0 Items
execute if block ~ ~ ~ furnace[facing=north] run setblock 0 0 0 furnace[facing=north] destroy
execute if block ~ ~ ~ furnace[facing=east] run setblock 0 0 0 furnace[facing=east] destroy
execute if block ~ ~ ~ furnace[facing=south] run setblock 0 0 0 furnace[facing=south] destroy
execute if block ~ ~ ~ furnace[facing=west] run setblock 0 0 0 furnace[facing=west] destroy

# move xp orbs to origin furnace
tp @e[type=experience_orb,x=0,y=0,z=0,dx=0] ~ ~ ~

# copy data to new furnace
data modify storage ns:temp furnace set from block ~ ~ ~
data remove storage ns:temp furnace.RecipesUsed
data modify block 0 0 0 {} merge from storage ns:temp furnace

# clone new furnace over old furnace
clone 0 0 0 0 0 0 ~ ~ ~
