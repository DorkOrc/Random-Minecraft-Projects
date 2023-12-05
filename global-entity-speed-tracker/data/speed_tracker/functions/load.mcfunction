data modify storage speed_tracker:global arguments set value {last_x:0f,last_y:0f,last_z:0f}
data modify storage speed_tracker:global distance_matrix set value [0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,1f]

execute in overworld run forceload add 0 0

scoreboard objectives add scratch dummy

scoreboard objectives add last_x dummy
scoreboard objectives add last_y dummy
scoreboard objectives add last_z dummy
scoreboard objectives add speed dummy
