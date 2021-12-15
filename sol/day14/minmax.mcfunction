
execute store result score V VAR run data get storage buf3 data[0].count

execute if score V VAR > MAX VAR run scoreboard players operation MAX VAR = V VAR
execute if score V VAR < MIN VAR run scoreboard players operation MIN VAR = V VAR

function aoc:io/read/next/buffer3
execute if score CONTINUE REG matches 1 at @s run function aoc:sol/day14/minmax