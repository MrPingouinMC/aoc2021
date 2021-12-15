

execute if score PASS VAR matches 0 run function aoc:sol/day11/increase
execute if score PASS VAR matches 1 unless block ~ ~ ~ white_wool run scoreboard players add NO_FLASH VAR 1 
execute if score PASS VAR matches 1 if block ~ ~ ~ white_wool run scoreboard players add COUNT VAR 1
execute if score PASS VAR matches 1 if block ~ ~ ~ white_wool run setblock ~ ~ ~ red_wool

tp @s ~1 ~ ~
scoreboard players add X VAR 1
execute if score X VAR >= SIZEX VAR run scoreboard players add Y VAR 1
execute if score X VAR >= SIZEX VAR run tp @s ~ ~ ~1
execute if score X VAR >= SIZEX VAR store result entity @s Pos[0] double 1 run scoreboard players get STARTX VAR
execute if score X VAR >= SIZEX VAR run scoreboard players set X VAR 0

execute at @s if score Y VAR < SIZEY VAR run function aoc:sol/day11/sweep
