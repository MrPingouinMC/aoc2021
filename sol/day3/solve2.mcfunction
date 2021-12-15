


execute store result score DSIZE VAR run data get storage buf data

data modify storage buf2 data set from storage buf data

scoreboard players set ONE VAR 0
scoreboard players set ZERO VAR 0
function aoc:io/init/buffer
function aoc:sol/day3/solve2_cumul

#tellraw @a ["zo ", {"score":{"objective":"VAR","name":"ZERO"}}, "  ", {"score":{"objective":"VAR","name":"ONE"}}]

scoreboard players set MC VAR 0
execute if score MODE VAR matches 0 if score ONE VAR >= ZERO VAR run scoreboard players set MC VAR 1
execute if score MODE VAR matches 1 if score ONE VAR < ZERO VAR run scoreboard players set MC VAR 1
execute if score MODE VAR matches 1 if score ZERO VAR matches 0 run scoreboard players set MC VAR 1
execute if score MODE VAR matches 1 if score ONE VAR matches 0 run scoreboard players set MC VAR 0

execute if score MODE VAR matches 0 run scoreboard players operation OXY VAR *= 2 CONST
execute if score MODE VAR matches 0 run execute if score MC VAR matches 1 run scoreboard players add OXY VAR 1

execute if score MODE VAR matches 1 run scoreboard players operation CO2 VAR *= 2 CONST
execute if score MODE VAR matches 1 run execute if score MC VAR matches 1 run scoreboard players add CO2 VAR 1

#tellraw @a ["mc : ", {"score":{"objective":"VAR","name":"MC"}}]
#tellraw @a ["buf 2 ", {"nbt":"data","storage":"buf2"}]

data modify storage buf4 data set value []
function aoc:io/init/buffer2
function aoc:sol/day3/filter

data modify storage buf data set from storage buf4 data
#tellraw @a ["buf 1 ", {"nbt":"data","storage":"buf"}]

execute store result score BSIZE VAR run data get storage buf data[0].bint
execute if score BSIZE VAR matches 1.. run function aoc:sol/day3/solve2
