

#tellraw @a ["bf3  ", {"nbt":"data[0]","storage":"buf3"}]
execute store result score DEPTH VAR run data get storage buf3 data[0]
scoreboard players add DEPTH VAR 1
execute store result entity @s Pos[1] double 1 run scoreboard players get DEPTH VAR

execute at @s if block ~-1 ~ ~ diorite if block ~1 ~ ~ diorite if block ~ ~ ~1 diorite if block ~ ~ ~-1 diorite run scoreboard players operation COUNT VAR += DEPTH VAR
execute at @s if score PART AOC matches 2 if block ~-1 ~ ~ diorite if block ~1 ~ ~ diorite if block ~ ~ ~1 diorite if block ~ ~ ~-1 diorite run data modify storage buf4 data append from entity @s Pos
execute at @s if block ~-1 ~ ~ diorite if block ~1 ~ ~ diorite if block ~ ~ ~1 diorite if block ~ ~ ~-1 diorite run setblock ~ ~ ~ water

tp @s ~1 ~ ~

function aoc:io/read/next/buffer3
execute if score CONTINUE REG matches 1 at @s run function aoc:sol/day9/sweep2