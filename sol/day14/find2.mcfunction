

execute store result score F VAR run data get storage buf3 data[0].val
execute if score F VAR = TARGET VAR run scoreboard players set FOUND VAR 1


execute if score FOUND VAR matches 0 run function aoc:io/read/shift/buffer3
execute if score FOUND VAR matches 0 if score CONTINUE REG matches 1 at @s run function aoc:sol/day14/find2