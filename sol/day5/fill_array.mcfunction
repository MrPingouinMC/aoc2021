
execute store result score IX1 VAR run data get storage buf4 data[0][0]
execute store result score IY1 VAR run data get storage buf4 data[0][1]
execute store result score IX2 VAR run data get storage buf4 data[0][2]
execute store result score IY2 VAR run data get storage buf4 data[0][3]

scoreboard players set IMODE VAR 0
execute unless score IX1 VAR = IX2 VAR run scoreboard players set IMODE VAR 1

execute if score IMODE VAR matches 0 run scoreboard players operation ILIMIT VAR = IY2 VAR
execute if score IMODE VAR matches 0 run scoreboard players operation ILIMIT VAR -= IY1 VAR

execute if score IMODE VAR matches 0 run scoreboard players operation ILIMIT VAR = IX2 VAR
execute if score IMODE VAR matches 0 run scoreboard players operation ILIMIT VAR -= IX1 VAR

function aoc:sol/day5/fill_array_loop

function aoc:io/read/next/buffer4
execute if score CONTINUE REG matches 1 run function aoc:sol/day5/fill_array

