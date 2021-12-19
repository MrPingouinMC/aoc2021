

execute store result score A VAR run data get storage buf data[0]
#tellraw @a ["A ", {"score":{"objective":"VAR","name":"A"}}]

scoreboard players operation R VAR = A VAR
execute if score A VAR matches -1 run function aoc:sol/day18/magnitude_nested
scoreboard players operation A VAR = R VAR
scoreboard players operation A VAR *= 3 CONST
function aoc:io/read/next/buffer

execute store result score B VAR run data get storage buf data[0]
#tellraw @a ["B ", {"score":{"objective":"VAR","name":"B"}}]
scoreboard players operation R VAR = B VAR
execute if score B VAR matches -1 run function aoc:sol/day18/magnitude_nested
scoreboard players operation B VAR = R VAR
scoreboard players operation B VAR *= 2 CONST
function aoc:io/read/next/buffer

#tellraw @a ["ab ", {"score":{"objective":"VAR","name":"A"}}, "  ", {"score":{"objective":"VAR","name":"B"}}]

scoreboard players operation R VAR = A VAR
scoreboard players operation R VAR += B VAR

#tellraw @a ["r ", {"score":{"objective":"VAR","name":"R"}}]

