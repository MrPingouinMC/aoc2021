
scoreboard players set EXTRA VAR 0

#tellraw @a ["arr ", {"nbt":"data","storage":"buf"}]

function aoc:io/init/buffer
function aoc:sol/day6/iter2


execute if score EXTRA VAR matches 1.. run function aoc:sol/day6/add_extra


execute store result score CSIZE VAR run data get storage buf data

#tellraw @a ["arr 2", {"nbt":"data","storage":"buf"}]
tellraw @a ["cycle : ", {"score":{"objective":"VAR","name":"CYCLE"}},  "     size : ", {"score":{"objective":"VAR","name":"CSIZE"}}]

scoreboard players remove CYCLE VAR 1
execute if score CYCLE VAR matches 1.. run function aoc:sol/day6/iter