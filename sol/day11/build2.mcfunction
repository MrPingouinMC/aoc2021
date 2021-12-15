

execute if score FIRST VAR matches 1 run setblock ~ ~ ~-1 diorite

setblock ~ ~ ~ air
setblock ~1 ~ ~ diorite
setblock ~ ~ ~1 diorite

#tellraw @a ["bf3  ", {"nbt":"data[0]","storage":"buf3"}]
execute store result score COLOR VAR run data get storage buf3 data[0]

execute if score COLOR VAR matches 0 run setblock ~ ~ ~ red_wool  
execute if score COLOR VAR matches 1 run setblock ~ ~ ~ orange_wool  
execute if score COLOR VAR matches 2 run setblock ~ ~ ~ yellow_wool  
execute if score COLOR VAR matches 3 run setblock ~ ~ ~ lime_wool  
execute if score COLOR VAR matches 4 run setblock ~ ~ ~ light_blue_wool  
execute if score COLOR VAR matches 5 run setblock ~ ~ ~ cyan_wool  
execute if score COLOR VAR matches 6 run setblock ~ ~ ~ blue_wool  
execute if score COLOR VAR matches 7 run setblock ~ ~ ~ purple_wool  
execute if score COLOR VAR matches 8 run setblock ~ ~ ~ magenta_wool  
execute if score COLOR VAR matches 9 run setblock ~ ~ ~ pink_wool  


tp @s ~1 ~ ~

function aoc:io/read/next/buffer3
execute if score CONTINUE REG matches 1 at @s run function aoc:sol/day11/build2