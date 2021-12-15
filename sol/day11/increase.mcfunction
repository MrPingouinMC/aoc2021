

execute if block ~ ~ ~ pink_wool run setblock ~ ~ ~ black_wool
execute if block ~ ~ ~ magenta_wool run setblock ~ ~ ~ pink_wool  
execute if block ~ ~ ~ purple_wool run setblock ~ ~ ~ magenta_wool  
execute if block ~ ~ ~ blue_wool run setblock ~ ~ ~ purple_wool  
execute if block ~ ~ ~ cyan_wool run setblock ~ ~ ~ blue_wool  
execute if block ~ ~ ~ light_blue_wool run setblock ~ ~ ~ cyan_wool  
execute if block ~ ~ ~ lime_wool run setblock ~ ~ ~ light_blue_wool  
execute if block ~ ~ ~ yellow_wool run setblock ~ ~ ~ lime_wool  
execute if block ~ ~ ~ orange_wool run setblock ~ ~ ~ yellow_wool  
execute if block ~ ~ ~ red_wool run setblock ~ ~ ~ orange_wool

execute if block ~ ~ ~ black_wool run function aoc:sol/day11/flash
