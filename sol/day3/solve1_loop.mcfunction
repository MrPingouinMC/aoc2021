

execute store result score A VAR run data get storage buf2 data[0]
execute store result score C VAR run data get storage buf3 data[0]

scoreboard players operation C VAR += A VAR
execute store result storage buf3 data[0] int 1 run scoreboard players get C VAR


function aoc:io/read/next/buffer2

data modify storage buf3 data append from storage buf3 data[0]
data remove storage buf3 data[0]
execute if score CONTINUE REG matches 1 run function aoc:sol/day3/solve1_loop