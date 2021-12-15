
scoreboard players set PART AOC 2
scoreboard players set DAY AOC 4
#scoreboard players set DAY AOC 0

scoreboard players set YEAR AOC 2021
function aoc:core/load_input
function aoc:core/timer_start


function aoc:io/init/input
function aoc:sol/day4/parse_entry

data modify storage buf2 data set from storage buf data
function aoc:io/read/next/line
function aoc:io/read/next/line


data modify storage buf3 data set value []
function aoc:sol/day4/parse_grids

#tellraw @a ["entry ", {"nbt":"data","storage":"buf2"}]
#tellraw @a ["grids ", {"nbt":"data","storage":"buf3"}]

#The idea is just to map the entries to ordinal, and find out the row/col with the smallest max number.


scoreboard players set RG VAR 0
scoreboard players set RC VAR 0
scoreboard players set RR VAR 0

scoreboard players set GLOBAL_MIN VAR 0
scoreboard players set GRID_INDEX VAR -1
scoreboard players set GRID_SUM VAR 0

scoreboard players set GINDEX VAR 0
function aoc:io/init/buffer3
function aoc:sol/day4/iter

#Iterate up to GLOBAL_MIN
function aoc:io/init/buffer2
function aoc:sol/day4/final

execute store result score LAST VAR run data get storage buf2 data[0]
scoreboard players operation SOL VAR = GRID_SUM VAR
scoreboard players operation SOL VAR -= LAST VAR

scoreboard players operation SOL VAR *= LAST VAR

function aoc:core/print_score
function aoc:core/timer_end
