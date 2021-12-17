

execute store result score I VAR run data get storage buf2 data[0]
function aoc:io/read/next/buffer2

scoreboard players set LENGTH VAR 15
scoreboard players set L VAR 0
execute if score I VAR matches 1 run scoreboard players set LENGTH VAR 11
function aoc:sol/day16/read_length

#I + L
scoreboard players add READ VAR 12
execute if score I VAR matches 0 run scoreboard players add READ VAR 4

data modify storage buf stack append value {l:-1,i:-1,read:0, op:-1,vals:[]}
execute store result storage buf stack[-1].l int 1 run scoreboard players get L VAR
execute store result storage buf stack[-1].i int 1 run scoreboard players get I VAR
execute store result storage buf stack[-1].read int 1 run scoreboard players get READ VAR
execute store result storage buf stack[-1].op int 1 run scoreboard players get ID VAR

#tellraw @a ["l i read", {"score":{"objective":"VAR","name":"L"}}, " ", {"score":{"objective":"VAR","name":"I"}}, " ", {"score":{"objective":"VAR","name":"READ"}}]

function aoc:sol/day16/long/read_packet_recc

execute store result score OP VAR run data get storage buf stack[-1].op
data modify storage buf4 data set from storage buf stack[-1].vals
#tellraw @a ["operation ", {"score":{"objective":"VAR","name":"OP"}}, " ", {"nbt":"data","storage":"buf4"}]

data modify storage long data set value [0]
execute if score OP VAR matches 1 run data modify storage long data set value [1]
execute if score OP VAR matches 2..3 run data modify storage long data set from storage buf4 data[0]
function aoc:io/init/buffer4
execute if score OP VAR matches 0..3 run function aoc:sol/day16/long/operation
execute if score OP VAR matches 5..7 run function aoc:sol/day16/long/operation2

data modify storage buf val set from storage long data

data remove storage buf stack[-1]