

scoreboard players set READ VAR 0
function aoc:sol/day16/read_packet

execute store result score L VAR run data get storage buf stack[-1].l
execute store result score I VAR run data get storage buf stack[-1].i
execute store result score READ2 VAR run data get storage buf stack[-1].read

execute if score I VAR matches 0 run scoreboard players operation L VAR -= READ VAR
execute if score I VAR matches 1 run scoreboard players remove L VAR 1
scoreboard players operation READ2 VAR += READ VAR


#tellraw @a ["update l i read", {"score":{"objective":"VAR","name":"L"}}, " ", {"score":{"objective":"VAR","name":"I"}}, " ", {"score":{"objective":"VAR","name":"READ"}}]

execute store result storage buf stack[-1].l int 1 run scoreboard players get L VAR
execute store result storage buf stack[-1].i int 1 run scoreboard players get I VAR
execute store result storage buf stack[-1].read int 1 run scoreboard players get READ2 VAR
data modify storage buf stack[-1].vals append value -1
execute store result storage buf stack[-1].vals[-1] int 1 run scoreboard players get VAL VAR
scoreboard players operation READ VAR = READ2 VAR

execute if score L VAR matches 1.. run function aoc:sol/day16/read_packet_recc