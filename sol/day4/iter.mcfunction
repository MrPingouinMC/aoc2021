
scoreboard players set MR VAR 1000

scoreboard players set MC1 VAR 0
scoreboard players set MC2 VAR 0
scoreboard players set MC3 VAR 0
scoreboard players set MC4 VAR 0
scoreboard players set MC5 VAR 0


scoreboard players set GSUM VAR 0
data modify storage buf data set from storage buf3 data[0]
function aoc:io/init/buffer
function aoc:sol/day4/iter2

scoreboard players set GM VAR 1000
execute if score MC1 VAR < GM VAR run scoreboard players operation GM VAR = MC1 VAR
execute if score MC2 VAR < GM VAR run scoreboard players operation GM VAR = MC2 VAR
execute if score MC3 VAR < GM VAR run scoreboard players operation GM VAR = MC3 VAR
execute if score MC4 VAR < GM VAR run scoreboard players operation GM VAR = MC4 VAR
execute if score MC5 VAR < GM VAR run scoreboard players operation GM VAR = MC5 VAR

execute if score MR VAR < GM VAR run scoreboard players operation GM VAR = MR VAR


execute if score PART AOC matches 1 if score GM VAR < GLOBAL_MIN VAR run data modify storage buf4 data set from storage buf3 data[0]
execute if score PART AOC matches 1 if score GM VAR < GLOBAL_MIN VAR run scoreboard players operation GRID_SUM VAR = GSUM VAR
execute if score PART AOC matches 1 if score GM VAR < GLOBAL_MIN VAR run scoreboard players operation GRID_INDEX VAR = GINDEX VAR
execute if score PART AOC matches 1 if score GM VAR < GLOBAL_MIN VAR run scoreboard players operation GLOBAL_MIN VAR = GM VAR

execute if score PART AOC matches 2 if score GM VAR > GLOBAL_MIN VAR run data modify storage buf4 data set from storage buf3 data[0]
execute if score PART AOC matches 2 if score GM VAR > GLOBAL_MIN VAR run scoreboard players operation GRID_SUM VAR = GSUM VAR
execute if score PART AOC matches 2 if score GM VAR > GLOBAL_MIN VAR run scoreboard players operation GRID_INDEX VAR = GINDEX VAR
execute if score PART AOC matches 2 if score GM VAR > GLOBAL_MIN VAR run scoreboard players operation GLOBAL_MIN VAR = GM VAR



#tellraw @a ["min : ", {"score":{"objective":"VAR","name":"GM"}}]

scoreboard players add GINDEX VAR 1
function aoc:io/read/next/buffer3
execute if score CONTINUE REG matches 1 run function aoc:sol/day4/iter