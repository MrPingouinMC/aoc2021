

execute store result score DAY VAR run data get storage buf stack[0].day
execute store result score VAL VAR run data get storage buf stack[0].v

#tellraw @a ["dp ", {"score":{"objective":"VAR","name":"DAY"}}, "  ", {"score":{"objective":"VAR","name":"VAL"}}]


scoreboard players set FOUND_SOME VAR 0
scoreboard players operation DIF VAR = DAY VAR
scoreboard players operation DIF VAR -= VAL VAR

scoreboard players operation A VAR = DIF VAR
scoreboard players set B VAR 9
function aoc:sol/day6/try_get
scoreboard players operation R1 VAR = R PUF
execute if score FOUND PUF matches 0 run function aoc:sol/day6/stack_entry
execute if score FOUND PUF matches 1 run scoreboard players add FOUND_SOME VAR 1


scoreboard players operation A VAR = DIF VAR
scoreboard players set B VAR 7
function aoc:sol/day6/try_get
scoreboard players operation R2 VAR = R PUF
execute if score FOUND PUF matches 0 run function aoc:sol/day6/stack_entry
execute if score FOUND PUF matches 1 run scoreboard players add FOUND_SOME VAR 1


execute if score FOUND_SOME VAR matches 2 run scoreboard players operation VAL PUF = R1 VAR 
execute if score FOUND_SOME VAR matches 2 run scoreboard players operation VAL PUF += R2 VAR
execute if score FOUND_SOME VAR matches 2 run scoreboard players operation V PUF = DAY VAR
execute if score FOUND_SOME VAR matches 2 run scoreboard players operation V PUF *= 1000 CONST
execute if score FOUND_SOME VAR matches 2 run scoreboard players operation V PUF += VAL VAR
execute if score FOUND_SOME VAR matches 2 if data storage buf stack[0].main run scoreboard players operation SUM VAR += VAL PUF
execute if score FOUND_SOME VAR matches 2 run function aoc:puf/setint


#tellraw @a ["stack ", {"nbt":"stack","storage":"buf"}]

execute if score FOUND_SOME VAR matches 2 run data remove storage buf stack[0]
execute store result score SIZE VAR run data get storage buf stack
execute if score SIZE VAR matches 1.. run function aoc:sol/day6/dp
