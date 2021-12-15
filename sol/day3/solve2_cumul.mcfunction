

execute store result score A VAR run data get storage buf data[0].bint[0]

execute if score A VAR matches 0 run scoreboard players add ZERO VAR 1
execute if score A VAR matches 1 run scoreboard players add ONE VAR 1

function aoc:io/read/next/buffer
execute if score CONTINUE REG matches 1 run function aoc:sol/day3/solve2_cumul