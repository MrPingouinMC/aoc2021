execute store result score CSIZE VAR run data get storage buf data[0].size
execute store result score CPROD VAR run data get storage buf data[0].prod


scoreboard players operation M1 VAR = CPROD VAR
scoreboard players operation M1 VAR %= F1 VAR

scoreboard players operation M2 VAR = CPROD VAR
scoreboard players operation M2 VAR %= F2 VAR

execute if score M1 VAR matches 0 if score M2 VAR matches 0 if score CSIZE VAR matches 6 run scoreboard players operation N9 VAR = CPROD VAR
execute if score M1 VAR matches 1.. if score M2 VAR matches 1.. if score CSIZE VAR matches 5 run scoreboard players operation N2 VAR = CPROD VAR


execute if score M1 VAR matches 1.. if score M2 VAR matches 0 if score CSIZE VAR matches 5 run scoreboard players operation N3 VAR = CPROD VAR
execute if score M1 VAR matches 1.. if score M2 VAR matches 0 if score CSIZE VAR matches 6 run scoreboard players operation N0 VAR = CPROD VAR

execute if score M1 VAR matches 0 if score M2 VAR matches 1.. if score CSIZE VAR matches 5 run scoreboard players operation N5 VAR = CPROD VAR
execute if score M1 VAR matches 0 if score M2 VAR matches 1.. if score CSIZE VAR matches 6 run scoreboard players operation N6 VAR = CPROD VAR

function aoc:io/read/shift/buffer
execute if score CONTINUE REG matches 1 run function aoc:sol/day8/second_pass