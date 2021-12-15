

data modify storage buf4 data set from storage buf3 data[0].word
scoreboard players set PROD VAR 1
execute store result score PSIZE VAR run data get storage buf4 data
function aoc:io/init/buffer4
function aoc:sol/day8/convert

scoreboard players set N VAR -1 

execute if score PROD VAR = N0 VAR run scoreboard players set N VAR 0 
execute if score PROD VAR = N1 VAR run scoreboard players set N VAR 1 
execute if score PROD VAR = N2 VAR run scoreboard players set N VAR 2
execute if score PROD VAR = N3 VAR run scoreboard players set N VAR 3 
execute if score PROD VAR = N4 VAR run scoreboard players set N VAR 4 
execute if score PROD VAR = N5 VAR run scoreboard players set N VAR 5 
execute if score PROD VAR = N6 VAR run scoreboard players set N VAR 6 
execute if score PROD VAR = N7 VAR run scoreboard players set N VAR 7 
execute if score PROD VAR = N8 VAR run scoreboard players set N VAR 8 
execute if score PROD VAR = N9 VAR run scoreboard players set N VAR 9 


scoreboard players operation N VAR *= MULT VAR
scoreboard players operation MULT VAR /= 10 CONST

scoreboard players operation SUM VAR += N VAR

function aoc:io/read/next/buffer3
execute if score CONTINUE REG matches 1 run function aoc:sol/day8/make_sum