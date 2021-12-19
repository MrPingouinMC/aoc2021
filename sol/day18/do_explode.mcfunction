

#tellraw @a [" "]
#tellraw @a ["explode", {"nbt":"data","storage":"buf"}]

scoreboard players set EXPLO VAR 1 
scoreboard players remove D VAR 1

execute store result score A VAR run data get storage buf data[1] 
execute store result score B VAR run data get storage buf data[2] 

data modify storage buf data[0] set value 0
data remove storage buf data[1]
data remove storage buf data[1]
data remove storage buf data[1]
scoreboard players remove BUFFER_SIZE REG 3

scoreboard players operation BSIZE VAR = LAST_V VAR
execute if score LAST_V VAR matches 0.. run function aoc:sol/day18/explode_propagate_left
scoreboard players operation BSIZE VAR = BUFFER_SIZE REG
scoreboard players remove BSIZE VAR 1
function aoc:sol/day18/explode_propagate_right

scoreboard players set LAST_V VAR 0
