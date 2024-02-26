# misc
scoreboard objectives add var dummy
scoreboard objectives add global dummy
data modify storage custom_arrows:temp tracker_display_data set value {interpolation_duration:1,start_interpolation:0}
data modify storage custom_arrows:temp mount_display_data set value {interpolation_duration:1,start_interpolation:0}


# Default Arrow Type
data modify storage custom_arrows:global default_arrow_type set value {arrow_model:1,mount_item:{id:"minecraft:air",Count:1b}}
data modify storage custom_arrows:global arrow_types set value []

# Arrow Types
data modify storage custom_arrows:global arrow_types append value {id: "explode", item_name: "Creeper", mount_item: {id:"minecraft:creeper_head"}}
data modify storage custom_arrows:global arrow_types append value {id: "teleport_random", item_name: "Player", mount_item: {id:"minecraft:player_head"}}
data modify storage custom_arrows:global arrow_types append value {id: "teleport_target"}

data modify storage custom_arrows:global arrow_types append value {id: "slime", item_name: "Slime", mount_item: {id:"minecraft:slime_block",scale:2f}}
data modify storage custom_arrows:global arrow_types append value {id: "fox", item_name: "Fox", arrow_model: 12345}
