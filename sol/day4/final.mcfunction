
execute store result score V VAR run data get storage buf2 data[0]

scoreboard players set IN_GRID VAR 0
function aoc:sol/day4/in_grid
execute if score IN_GRID VAR matches 1 run scoreboard players operation GRID_SUM VAR -= V VAR

scoreboard players remove GLOBAL_MIN VAR 1
function aoc:io/read/next/buffer2
execute if score GLOBAL_MIN VAR matches 1.. if score CONTINUE REG matches 1 run function aoc:sol/day4/final