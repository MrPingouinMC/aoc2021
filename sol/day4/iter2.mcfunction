

execute store result score EM1 VAR run data get storage buf data[0][0]
execute store result score EM2 VAR run data get storage buf data[0][1]
execute store result score EM3 VAR run data get storage buf data[0][2]
execute store result score EM4 VAR run data get storage buf data[0][3]
execute store result score EM5 VAR run data get storage buf data[0][4]


scoreboard players operation GSUM VAR += EM1 VAR
scoreboard players operation GSUM VAR += EM2 VAR
scoreboard players operation GSUM VAR += EM3 VAR
scoreboard players operation GSUM VAR += EM4 VAR
scoreboard players operation GSUM VAR += EM5 VAR

scoreboard players set INDEX VAR 0
function aoc:io/init/buffer2
function aoc:sol/day4/map


execute if score E1 VAR > MC1 VAR run scoreboard players operation MC1 VAR = E1 VAR
execute if score E2 VAR > MC2 VAR run scoreboard players operation MC2 VAR = E2 VAR
execute if score E3 VAR > MC3 VAR run scoreboard players operation MC3 VAR = E3 VAR
execute if score E4 VAR > MC4 VAR run scoreboard players operation MC4 VAR = E4 VAR
execute if score E5 VAR > MC5 VAR run scoreboard players operation MC5 VAR = E5 VAR

execute if score E2 VAR > E1 VAR run scoreboard players operation E1 VAR = E2 VAR
execute if score E3 VAR > E1 VAR run scoreboard players operation E1 VAR = E3 VAR
execute if score E4 VAR > E1 VAR run scoreboard players operation E1 VAR = E4 VAR
execute if score E5 VAR > E1 VAR run scoreboard players operation E1 VAR = E5 VAR

execute if score E1 VAR < MR VAR run scoreboard players operation MR VAR = E1 VAR

function aoc:io/read/next/buffer
execute if score CONTINUE REG matches 1 run function aoc:sol/day4/iter2