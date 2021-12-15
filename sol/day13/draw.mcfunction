

execute store result score X VAR run data get storage buf2 data[0]
execute store result score Y VAR run data get storage buf2 data[1]

scoreboard players operation X VAR += STARTX VAR
scoreboard players operation Y VAR += STARTY VAR

execute store result entity @s Pos[0] double 1 run scoreboard players get X VAR
execute store result entity @s Pos[2] double 1 run scoreboard players get Y VAR

execute at @s run setblock ~ ~ ~ diorite


function aoc:io/read/next/buffer2
function aoc:io/read/next/buffer2
execute if score CONTINUE REG matches 1 at @s run function aoc:sol/day13/draw