


scoreboard players set VALID VAR 0
execute store result score X1 VAR run data get storage buf2 data[0][0]
execute store result score Y1 VAR run data get storage buf2 data[0][1]
execute store result score X2 VAR run data get storage buf2 data[0][2]
execute store result score Y2 VAR run data get storage buf2 data[0][3]

scoreboard players set MODE VAR 3
execute if score X1 VAR = X2 VAR run scoreboard players set MODE VAR 0
execute if score Y1 VAR = Y2 VAR run scoreboard players set MODE VAR 1

execute if score X1 VAR < X2 VAR if score Y1 VAR < Y2 VAR run scoreboard players set MODE VAR 2

function aoc:sol/day5/populate_loop

function aoc:io/read/next/buffer2
execute if score CONTINUE REG matches 1 run function aoc:sol/day5/populate
