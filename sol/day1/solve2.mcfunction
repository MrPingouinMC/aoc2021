
scoreboard players operation CURRENT VAR = LAST VAR

execute store result score V VAR run data get storage buf wind[0]
scoreboard players operation CURRENT VAR -= V VAR
data remove storage buf wind[0]

execute store result score V VAR run data get storage buf data[0]
scoreboard players operation CURRENT VAR += V VAR
data modify storage buf wind append from storage buf data[0]

execute if score LAST VAR < CURRENT VAR run scoreboard players add SOL VAR 1
#execute if score LAST VAR < CURRENT VAR run tellraw @a ["increased", {"score":{"objective":"VAR","name":"LAST"}}, "  ", {"score":{"objective":"VAR","name":"CURRENT"}}]

scoreboard players operation LAST VAR = CURRENT VAR

function aoc:io/read/next/buffer
execute if score CONTINUE REG matches 1 run function aoc:sol/day1/solve2