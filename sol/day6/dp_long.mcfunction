

execute store result score DAY VAR run data get storage buf stack[0].day
execute store result score VAL VAR run data get storage buf stack[0].v

#tellraw @a ["dp ", {"score":{"objective":"VAR","name":"DAY"}}, "  ", {"score":{"objective":"VAR","name":"VAL"}}]

scoreboard players set FOUND_SOME VAR 0
scoreboard players operation DIF VAR = DAY VAR
scoreboard players operation DIF VAR -= VAL VAR

scoreboard players operation A VAR = DIF VAR
scoreboard players set B VAR 9
function aoc:sol/day6/try_get_long
data modify storage buf r1 set from storage puf data
#scoreboard players operation R1 VAR = R PUF
execute if score FOUND PUF matches 0 run function aoc:sol/day6/stack_entry
execute if score FOUND PUF matches 1 run scoreboard players add FOUND_SOME VAR 1


scoreboard players operation A VAR = DIF VAR
scoreboard players set B VAR 7
function aoc:sol/day6/try_get_long
data modify storage buf r2 set from storage puf data
#scoreboard players operation R2 VAR = R PUF
execute if score FOUND PUF matches 0 run function aoc:sol/day6/stack_entry
execute if score FOUND PUF matches 1 run scoreboard players add FOUND_SOME VAR 1


execute if score FOUND_SOME VAR matches 2 run data modify storage long data set from storage buf r1
execute if score FOUND_SOME VAR matches 2 run data modify storage long add set from storage buf r2
execute if score FOUND_SOME VAR matches 2 run function aoc:long/add
execute if score FOUND_SOME VAR matches 2 run scoreboard players operation V PUF = DAY VAR
execute if score FOUND_SOME VAR matches 2 run scoreboard players operation V PUF *= 1000 CONST
execute if score FOUND_SOME VAR matches 2 run scoreboard players operation V PUF += VAL VAR
execute if score FOUND_SOME VAR matches 2 run data modify storage puf data set from storage long data
execute if score FOUND_SOME VAR matches 2 run function aoc:puf/set
execute if score FOUND_SOME VAR matches 2 if data storage buf stack[0].main run data modify storage long add set from storage buf sum
execute if score FOUND_SOME VAR matches 2 if data storage buf stack[0].main run function aoc:long/add
execute if score FOUND_SOME VAR matches 2 if data storage buf stack[0].main run data modify storage buf sum set from storage long data
#execute if score FOUND_SOME VAR matches 2 if data storage buf stack[0].main run tellraw @a ["sum ", {"score":{"objective":"VAR","name":"DAY"}}, "  ", {"score":{"objective":"VAR","name":"VAL"}}, "      ",{"nbt":"data","storage":"long"}]


#tellraw @a ["stack ", {"nbt":"stack","storage":"buf"}]

execute if score FOUND_SOME VAR matches 2 run data remove storage buf stack[0]
execute store result score SIZE VAR run data get storage buf stack
execute if score SIZE VAR matches 1.. run function aoc:sol/day6/dp_long
