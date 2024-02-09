# set up important objectives
scoreboard objectives add id dummy
scoreboard objectives add global dummy
scoreboard objectives add variable dummy
scoreboard objectives add constant dummy
scoreboard objectives add db.players.index dummy

execute unless score <next_id> global matches 2.. run scoreboard players set <next_id> global 2
execute unless score <next_auto_action_id> global matches 1..20 run scoreboard players set <next_auto_action_id> global 1

# set up important global data and templates
function pandamium:startup/setup_dictionary
function pandamium:startup/setup_custom_item_default_data
function pandamium:startup/setup_templates

# Useful Constants
scoreboard players set #ticks_per_second constant 20
scoreboard players set #ticks_per_minute constant 1200
scoreboard players set #ticks_per_hour constant 72000
scoreboard players set #ticks_per_day constant 1728000
scoreboard players set #seconds_per_minute constant 60
scoreboard players set #seconds_per_hour constant 3600
scoreboard players set #minutes_per_hour constant 60
scoreboard players set #-1 constant -1
scoreboard players set #2 constant 2
scoreboard players set #3 constant 3
scoreboard players set #4 constant 4
scoreboard players set #10 constant 10
scoreboard players set #12 constant 12
scoreboard players set #16 constant 16
scoreboard players set #24 constant 24
scoreboard players set #31 constant 31
scoreboard players set #32 constant 32
scoreboard players set #60 constant 60
scoreboard players set #85 constant 85
scoreboard players set #96 constant 96
scoreboard players set #100 constant 100
scoreboard players set #191 constant 191
scoreboard players set #255 constant 255
scoreboard players set #256 constant 256
scoreboard players set #500 constant 500
scoreboard players set #512 constant 512
scoreboard players set #600 constant 600
scoreboard players set #1000 constant 1000
scoreboard players set #18000 constant 18000
scoreboard players set #65536 constant 65536
scoreboard players set #1000000 constant 1000000

# Triggers
scoreboard objectives add item_font trigger
scoreboard objectives add sign_font trigger

# Atrributes
scoreboard objectives add selected_block.x dummy
scoreboard objectives add selected_block.y dummy
scoreboard objectives add selected_block.z dummy

scoreboard objectives add font.gradient.left_colour dummy

# Miscellaneous Scoreboards
scoreboard objectives add temp_1 dummy

# Forceload staff world platform (2x2)
execute in pandamium:staff_world run forceload add -1 -1 0 0
scoreboard players set <dummy_block_loaded> global 0
function pandamium:startup/place_dummy_blocks

# Forceload a single chunk outside the world border in all dimensions
execute in overworld run forceload add 29999999 29999999
execute in the_nether run forceload add 29999999 29999999
execute in the_end run forceload add 29999999 29999999
execute in pandamium:staff_world run forceload add 29999999 29999999

## Function Loops
# tick
scoreboard players set <5_tick_loop> global -1
scoreboard players set <20_tick_loop> global -1
