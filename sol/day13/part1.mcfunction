
scoreboard players set PART AOC 1
scoreboard players set DAY AOC 13
#scoreboard players set DAY AOC 0

scoreboard players set YEAR AOC 2021
function aoc:core/load_input
function aoc:core/timer_start

data modify storage buf2 data set value []
data modify storage buf3 data set value []
scoreboard players set FOLD VAR 0
function aoc:io/init/input
function aoc:sol/day13/parse

#tellraw @a ["buf2", {"nbt":"data","storage":"buf2"}]
#tellraw @a ["buf3", {"nbt":"data","storage":"buf3"}]
function aoc:puf/create/new

scoreboard players set COUNT VAR 0
function aoc:io/init/buffer2
execute as @e[tag=puf] at @s run function aoc:sol/day13/init

#tellraw @a ["count", {"score":{"objective":"VAR","name":"COUNT"}}]

scoreboard players set AXIS VAR 0
execute store result score RAXIS VAR run data get storage buf3 data[0]
execute store result score FOLD_POS VAR run data get storage buf3 data[1]
scoreboard players operation FOLD_POS2 VAR = FOLD_POS VAR
scoreboard players operation FOLD_POS2 VAR *= 2 CONST
execute if score RAXIS VAR matches 56 run scoreboard players set AXIS VAR 1


#tellraw @a ["to fold : ", {"nbt":"data","storage":"buf2"}]
function aoc:io/init/buffer2
execute as @e[tag=puf] at @s run function aoc:sol/day13/fold

scoreboard players operation SOL VAR = COUNT VAR

function aoc:puf/create/end

function aoc:core/print_score
function aoc:core/timer_end
