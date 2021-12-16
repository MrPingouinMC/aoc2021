
execute store result score V VAR run data get storage buf4 data[0]

execute if score OP VAR matches 0 run scoreboard players operation VAL VAR += V VAR
execute if score OP VAR matches 1 run scoreboard players operation VAL VAR *= V VAR
execute if score OP VAR matches 2 run scoreboard players operation VAL VAR < V VAR
execute if score OP VAR matches 3 run scoreboard players operation VAL VAR > V VAR

function aoc:io/read/next/buffer4
execute if score CONTINUE REG matches 1 at @s run function aoc:sol/day16/operation