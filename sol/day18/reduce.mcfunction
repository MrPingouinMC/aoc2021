


scoreboard players set EXPLO VAR 0
scoreboard players set D VAR 0
scoreboard players set LAST_V VAR -1
function aoc:io/init/buffer
function aoc:sol/day18/explode
#execute if score EXPLO VAR matches 1.. run tellraw @a ["exploded ", {"nbt":"data","storage":"buf"}]


scoreboard players set SPLIT VAR 0
function aoc:io/init/buffer
function aoc:sol/day18/split
#execute if score SPLIT VAR matches 1.. run tellraw @a ["split ", {"nbt":"data","storage":"buf"}]

scoreboard players set CONTINUE VAR 0
execute if score EXPLO VAR matches 1.. run scoreboard players set CONTINUE VAR 1
execute if score SPLIT VAR matches 1.. run scoreboard players set CONTINUE VAR 1

execute if score CONTINUE VAR matches 1 run function aoc:sol/day18/reduce


#[-1,-1,-1,-1,-1,1,1,-2,-1,2,2,-2,-2,-1,3,3,-2,-2,-1,4,4,-2,-2,-1,5,5,-2,-2]
#[-1,-1,-1,-1,0,-1,3,2,-2,-2,-1,3,3,-2,-2,-1,4,4,-2,-2,-1,5,5,-2,-2]
#[-1,-1,-1,-1,3,0,-2,-1,5,3,-2,-2,-1,4,4,-2,-2,-1,5,5,-2,-2]