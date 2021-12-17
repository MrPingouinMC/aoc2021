
#tellraw @a ["new packet "]

function aoc:sol/day16/read3
scoreboard players operation VERSION VAR = R VAR
function aoc:sol/day16/read3
scoreboard players operation ID VAR = R VAR

scoreboard players operation VSUM VAR += VERSION VAR

#tellraw @a ["V T ", {"score":{"objective":"VAR","name":"VERSION"}}, "  ", {"score":{"objective":"VAR","name":"ID"}}]


data modify storage buf3 data set value []
scoreboard players set MULT LONG 2
data modify storage long data set value [0]
execute if score ID VAR matches 4 run function aoc:sol/day16/read_packet_group
execute if score ID VAR matches 4 run function aoc:io/init/buffer3
execute if score ID VAR matches 4 run function aoc:sol/day16/long/to_val
#execute if score ID VAR matches 4 run tellraw @a ["longliteral ", {"nbt":"data","storage":"long"}]
execute if score ID VAR matches 4 run data modify storage buf val set from storage long data
execute unless score ID VAR matches 4 run function aoc:sol/day16/long/read_packet_operation

#tellraw @a ["packet end, size", {"score":{"objective":"VAR","name":"READ"}}]
