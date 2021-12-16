

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

function aoc:sol/day16/read_packet_recc

execute store result score OP VAR run data get storage buf stack[-1].op
data modify storage buf4 data set from storage buf stack[-1].vals
tellraw @a ["operation ", {"score":{"objective":"VAR","name":"OP"}}, " ", {"nbt":"data","storage":"buf4"}]

scoreboard players set VAL VAR 0
execute if score OP VAR matches 1 run scoreboard players set VAL VAR 1
execute if score OP VAR matches 2..3 run execute store result score VAL VAR run data get storage buf4 data[0]
function aoc:io/init/buffer4
execute if score OP VAR matches 0..3 run function aoc:sol/day16/operation
execute if score OP VAR matches 5..7 run function aoc:sol/day16/operation2


data remove storage buf stack[-1]

#
#100 010 1 00000000001 001010100000000001101010000000000000101111010001111000
#VVV TTT I LLLLLLLLLLL
#  4   1 1           1

#620080001611562C8802118E34
# 011 000 1 00000000010 000 000 0 000000000010110 0001000101010110001011001000100000000010000100011000111000110100
# VVV TTT I LLLLLLLLLLL VVV TTT I LLLLLLLLLLLLLLL
#   3   0 1           2   0   0 0              22


#C0015000016115A2E0802F182340
#110 000 0 000000001010100 000000000000000001011000010001010110100010111000001000000000101111000110000010001101000000

#VVV TTT I LLLLLLLLLLLLLLL
#  6   0 0              84



#000 000 0 000000000010110 00010001010110100010111000001000000000101111000110000010001101000000
#VVV TTT I LLLLLLLLLLLLLLL
#  0   0 0              22

#000 100 01010 110100010111000001000000000101111000110000010001101000000
#VVV TTT AAAAA

#110 100 01011 1000001000000000101111000110000010001101000000
#VVV TTT AAAAA

#100 000 1 000000000101111 000110000010001101000000
#VVV TTT I LLLLLLLLLLLLLLL