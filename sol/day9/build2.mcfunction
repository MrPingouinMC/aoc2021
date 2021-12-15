

#tellraw @a ["bf3  ", {"nbt":"data[0]","storage":"buf3"}]
execute store result score DEPTH VAR run data get storage buf3 data[0]

execute if score FIRST VAR matches 1 run fill ~ ~ ~-1 ~ ~9 ~-1 diorite
fill ~ ~ ~ ~ ~9 ~ air
fill ~1 ~ ~ ~1 ~9 ~ diorite
fill ~ ~ ~1 ~ ~9 ~1 diorite

execute store result entity @s Pos[1] double 1 run scoreboard players get DEPTH VAR
execute at @s run fill ~ 0 ~ ~ ~ ~ diorite  


tp @s ~1 ~ ~

function aoc:io/read/next/buffer3
execute if score CONTINUE REG matches 1 at @s run function aoc:sol/day9/build2