# Important Scoreboards
scoreboard objectives add pandamium.global dummy
scoreboard objectives add pandamium.variable dummy
scoreboard objectives add pandamium.constant dummy

# Constants
scoreboard players set #ticks_per_second pandamium.constant 20
scoreboard players set #ticks_per_minute pandamium.constant 1200
scoreboard players set #ticks_per_hour pandamium.constant 72000
scoreboard players set #ticks_per_day pandamium.constant 1728000
scoreboard players set #seconds_per_minute pandamium.constant 60
scoreboard players set #seconds_per_hour pandamium.constant 3600
scoreboard players set #minutes_per_hour pandamium.constant 60
scoreboard players set #-1 pandamium.constant -1
scoreboard players set #2 pandamium.constant 2
scoreboard players set #3 pandamium.constant 3
scoreboard players set #4 pandamium.constant 4
scoreboard players set #10 pandamium.constant 10
scoreboard players set #12 pandamium.constant 12
scoreboard players set #16 pandamium.constant 16
scoreboard players set #24 pandamium.constant 24
scoreboard players set #31 pandamium.constant 31
scoreboard players set #32 pandamium.constant 32
scoreboard players set #60 pandamium.constant 60
scoreboard players set #85 pandamium.constant 85
scoreboard players set #96 pandamium.constant 96
scoreboard players set #100 pandamium.constant 100
scoreboard players set #191 pandamium.constant 191
scoreboard players set #255 pandamium.constant 255
scoreboard players set #256 pandamium.constant 256
scoreboard players set #500 pandamium.constant 500
scoreboard players set #512 pandamium.constant 512
scoreboard players set #600 pandamium.constant 600
scoreboard players set #1000 pandamium.constant 1000
scoreboard players set #18000 pandamium.constant 18000
scoreboard players set #65536 pandamium.constant 65536
scoreboard players set #1000000 pandamium.constant 1000000

# Triggers
scoreboard objectives add phantoms trigger

#scoreboard objectives add particles trigger
#scoreboard objectives add item_font trigger
#scoreboard objectives add sign_font trigger

# Options
scoreboard objectives add pandamium.optn.disable_phantoms dummy

# Atrributes
#scoreboard objectives add pandamium.active_particles dummy
#scoreboard objectives add pandamium.death_particles dummy

#scoreboard objectives add pandamium.font.gradient.left_colour dummy

# Miscellaneous Scoreboards
#scoreboard objectives add pandamium.temp_1 dummy

# Gamerules
gamerule doInsomnia false

## Function Loops
# tick
scoreboard players set <5_tick_loop> pandamium.global -1
scoreboard players set <20_tick_loop> pandamium.global -1

# secondary
schedule function pandamium:impl/phantoms/loop 120s
