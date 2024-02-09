#> Pre
scoreboard players add <5_tick_loop> global 1
execute unless score <5_tick_loop> global matches 0..4 run scoreboard players set <5_tick_loop> global 0
scoreboard players add <20_tick_loop> global 1
execute unless score <20_tick_loop> global matches 0..19 run scoreboard players set <20_tick_loop> global 0

#> Main
execute if score <5_tick_loop> global matches 0 run function pandamium:every_5_ticks
execute if score <5_tick_loop> global matches 1 run function pandamium:player/check_everyones_triggers
execute if score <20_tick_loop> global matches 2 run function pandamium:every_20_ticks

#> Post
function pandamium:impl/queue/tick
