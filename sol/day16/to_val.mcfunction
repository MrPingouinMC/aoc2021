

execute store result score V VAR run data get storage buf3 data[0]
scoreboard players operation VAL VAR += VAL VAR
scoreboard players operation VAL VAR += V VAR

function aoc:io/read/next/buffer3
execute if score CONTINUE REG matches 1 at @s run function aoc:sol/day16/to_val