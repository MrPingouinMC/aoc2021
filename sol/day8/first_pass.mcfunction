

execute store result score CSIZE VAR run data get storage buf data[0].size
execute store result score CPROD VAR run data get storage buf data[0].prod

execute if score CSIZE VAR matches 2 run scoreboard players operation N1 VAR = CPROD VAR 
execute if score CSIZE VAR matches 3 run scoreboard players operation N7 VAR = CPROD VAR 
execute if score CSIZE VAR matches 4 run scoreboard players operation N4 VAR = CPROD VAR 
execute if score CSIZE VAR matches 7 run scoreboard players operation N8 VAR = CPROD VAR 

function aoc:io/read/shift/buffer
execute if score CONTINUE REG matches 1 run function aoc:sol/day8/first_pass