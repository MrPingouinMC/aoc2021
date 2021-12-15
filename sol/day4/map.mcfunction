
execute store result score MAP VAR run data get storage buf2 data[0]

execute if score MAP VAR = EM1 VAR run scoreboard players operation E1 VAR = INDEX VAR
execute if score MAP VAR = EM2 VAR run scoreboard players operation E2 VAR = INDEX VAR
execute if score MAP VAR = EM3 VAR run scoreboard players operation E3 VAR = INDEX VAR
execute if score MAP VAR = EM4 VAR run scoreboard players operation E4 VAR = INDEX VAR
execute if score MAP VAR = EM5 VAR run scoreboard players operation E5 VAR = INDEX VAR


scoreboard players add INDEX VAR 1
function aoc:io/read/shift/buffer2
execute if score CONTINUE REG matches 1 run function aoc:sol/day4/map