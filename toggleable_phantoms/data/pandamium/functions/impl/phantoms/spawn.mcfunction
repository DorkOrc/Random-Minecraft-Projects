scoreboard players set <phantoms> pandamium.variable 1
execute if predicate pandamium:coin_flip run scoreboard players add <phantoms> pandamium.variable 1
execute if predicate pandamium:coin_flip run scoreboard players add <phantoms> pandamium.variable 2

execute if score <phantoms> pandamium.variable matches 1.. if block ^ ^28 ^5 air run summon phantom ^ ^28 ^5
execute if score <phantoms> pandamium.variable matches 1.. unless block ^ ^28 ^5 air run summon phantom ^ ^28 ^
execute if score <phantoms> pandamium.variable matches 2.. if block ^ ^28 ^-5 air run summon phantom ^ ^28 ^-5
execute if score <phantoms> pandamium.variable matches 3.. if block ^5 ^28 ^ air run summon phantom ^5 ^28 ^
execute if score <phantoms> pandamium.variable matches 4.. if block ^-5 ^28 ^ air run summon phantom ^-5 ^28 ^
