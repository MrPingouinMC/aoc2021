
execute store result score V VAR run data get storage buf3 data[0]

scoreboard players operation COMMON1 VAR *= 2 CONST
scoreboard players operation COMMON2 VAR *= 2 CONST

execute if score V VAR >= TARGET VAR run scoreboard players add COMMON1 VAR 1
execute if score V VAR < TARGET VAR run scoreboard players add COMMON2 VAR 1

function aoc:io/read/next/buffer3
execute if score CONTINUE REG matches 1 run function aoc:sol/day3/reduce