
#tellraw @a ["intersect  ", {"nbt":"data[0]","storage":"buf3"}, {"nbt":"data[0]","storage":"buf2"}]

execute store result score X3 VAR run data get storage buf3 data[0][0]
execute store result score Y3 VAR run data get storage buf3 data[0][1]
execute store result score X4 VAR run data get storage buf3 data[0][2]
execute store result score Y4 VAR run data get storage buf3 data[0][3]


scoreboard players set INTER VAR 0
execute if score X2 VAR >= X3 VAR if score X1 VAR <= X4 VAR run scoreboard players add INTER VAR 1
execute if score Y2 VAR >= Y3 VAR if score Y1 VAR <= Y4 VAR run scoreboard players add INTER VAR 1

#execute if score X1 VAR = X3 VAR if score X2 VAR = X4 VAR if score Y1 VAR = Y3 VAR if score Y2 VAR = Y4 VAR run scoreboard players set INTER VAR 0

execute if score INTER VAR matches 2 run function aoc:sol/day5/intersect_add

function aoc:io/read/next/buffer3
execute if score CONTINUE REG matches 1 run function aoc:sol/day5/intersect2