execute in pandamium:staff_world unless loaded 0 0 0 run return run schedule function pandamium:startup/place_dummy_blocks 1t

execute in pandamium:staff_world run fill 0 0 0 6 2 0 air
execute in pandamium:staff_world run setblock 1 0 0 barrel{Lock:"§r"}
execute in pandamium:staff_world run setblock 2 0 0 yellow_shulker_box{Lock:"§r"}
execute in pandamium:staff_world run setblock 3 0 0 oak_sign{is_waxed:1b}
execute in pandamium:staff_world run setblock 4 0 0 lectern[has_book=false]{Book:{Count:1b,id:"minecraft:written_book",tag:{title:"",author:"",pages:['""','""','""','""','""'],resolved:1b}}}
execute in pandamium:staff_world run setblock 5 0 0 decorated_pot
execute in pandamium:staff_world run setblock 6 0 0 repeating_command_block{Command:"_",auto:1b}
execute in pandamium:staff_world run fill -1 2 1 7 -1 -1 barrier replace air

scoreboard players set <dummy_block_loaded> global 1
