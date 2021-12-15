
scoreboard players set PART AOC 1
scoreboard players set DAY AOC 12
#scoreboard players set DAY AOC 0

scoreboard players set YEAR AOC 2021
function aoc:core/load_input
function aoc:core/timer_start

data modify storage buf2 data set value []
function aoc:io/init/input
function aoc:sol/day12/parse

#tellraw @a ["buf2", {"nbt":"data","storage":"buf2"}]
function aoc:puf/create/new

scoreboard players set LOCK VAR 0
scoreboard players set MAX_VISIT VAR 1
scoreboard players set START_CONST VAR 852364403
scoreboard players set END_CONST VAR 150371

execute as @e[tag=puf] at @s run function aoc:sol/day12/main


scoreboard players operation SOL VAR = COUNT VAR


function aoc:core/print_score
function aoc:core/timer_end
