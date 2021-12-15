

execute store result score S VAR run data get storage buf data[0]
scoreboard players operation SOL VAR += S VAR


function aoc:io/read/next/buffer
execute if score CONTINUE REG matches 1 run function aoc:sol/day6/sum