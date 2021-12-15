
execute store result score A VAR run data get storage buf2 data[0].bint[0]
execute if score A VAR = MC VAR run data remove storage buf2 data[0].bint[0]
execute if score A VAR = MC VAR run data modify storage buf4 data append from storage buf2 data[0]


function aoc:io/read/next/buffer2
execute if score CONTINUE REG matches 1 run function aoc:sol/day3/filter