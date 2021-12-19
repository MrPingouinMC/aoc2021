
data modify storage buf data insert 0 from storage buf data[-1]
data remove storage buf data[-1]

execute store result score CUR VAR run data get storage buf data[0]

execute if score CUR VAR matches 0.. run scoreboard players operation CUR VAR += A VAR 
execute if score CUR VAR matches 0.. run execute store result storage buf data[0] int 1 run scoreboard players get CUR VAR
execute if score CUR VAR matches 0.. run scoreboard players set BSIZE VAR 0 

scoreboard players remove BSIZE VAR 1
execute if score BSIZE VAR matches 1.. run function aoc:sol/day18/explode_propagate_left

data modify storage buf data append from storage buf data[0]
data remove storage buf data[0]
