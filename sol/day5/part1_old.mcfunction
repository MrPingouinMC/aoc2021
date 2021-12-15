
scoreboard players set PART AOC 1
scoreboard players set DAY AOC 5
#scoreboard players set DAY AOC 0

scoreboard players set YEAR AOC 2021
function aoc:core/load_input
function aoc:core/timer_start

data modify storage buf2 data set value []
function aoc:io/init/input
function aoc:sol/day5/parse

#tellraw @a ["buf2 ", {"nbt":"data","storage":"buf2"}]

data modify storage buf3 data set value []
function aoc:io/init/buffer2
function aoc:sol/day5/filter

#tellraw @a ["buf3 filtered", {"nbt":"data","storage":"buf3"}]

scoreboard players set ICOUNT VAR 0
scoreboard players set SUB_COUNT VAR 0
data modify storage buf2 data set from storage buf3 data 
data modify storage buf4 data set value []
function aoc:io/init/buffer2
function aoc:sol/day5/intersect

tellraw @a ["buf4 ", {"nbt":"data","storage":"buf4"}]
tellraw @a ["icount", {"score":{"objective":"VAR","name":"ICOUNT"}}]


scoreboard players operation SOL VAR = ICOUNT VAR
scoreboard players operation SOL VAR -= SUB_COUNT VAR


function aoc:core/print_score
function aoc:core/timer_end
