

scoreboard players set AXIS VAR 0
execute store result score RAXIS VAR run data get storage buf3 data[0]
execute store result score FOLD_POS VAR run data get storage buf3 data[1]
scoreboard players operation FOLD_POS2 VAR = FOLD_POS VAR
scoreboard players operation FOLD_POS2 VAR *= 2 CONST
execute if score RAXIS VAR matches 56 run scoreboard players set AXIS VAR 1

#tellraw @a ["folding", {"score":{"objective":"VAR","name":"FOLD_POS"}}]
#tellraw @a ["", {"nbt":"data","storage":"buf2"}]

data modify storage buf4 data set value []
function aoc:io/init/buffer2
function aoc:sol/day13/fold

#tellraw @a ["folded", {"nbt":"data","storage":"buf4"}]

data modify storage buf2 data set from storage buf4 data

function aoc:io/read/next/buffer3
function aoc:io/read/next/buffer3
execute if score CONTINUE REG matches 1 at @s run function aoc:sol/day13/fold_all