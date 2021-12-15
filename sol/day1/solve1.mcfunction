



execute store result score CURRENT VAR run data get storage buf data[0]
execute if score CURRENT VAR > LAST VAR run scoreboard players add SOL VAR 1
scoreboard players operation LAST VAR = CURRENT VAR

function aoc:io/read/next/buffer
execute if score CONTINUE REG matches 1 run function aoc:sol/day1/solve1