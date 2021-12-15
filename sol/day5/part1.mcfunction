
scoreboard players set PART AOC 1
scoreboard players set DAY AOC 5
#scoreboard players set DAY AOC 0

scoreboard players set YEAR AOC 2021
function aoc:core/load_input
function aoc:core/timer_start

data modify storage buf2 data set value []
function aoc:io/init/input
function aoc:sol/day5/parse

function aoc:puf/create/new

#tellraw @a ["buf2 ", {"nbt":"data","storage":"buf2"}]

data modify storage buf3 data set value []
function aoc:io/init/buffer2
function aoc:sol/day5/filter

#tellraw @a ["buf3 filtered", {"nbt":"data","storage":"buf3"}]

scoreboard players set ICOUNT VAR 0
data modify storage buf2 data set from storage buf3 data 
#tellraw @a ["buf ", {"nbt":"data","storage":"buf2"}]
function aoc:io/init/buffer2
execute as @e[tag=puf] at @s run function aoc:sol/day5/populate

scoreboard players operation SOL VAR = ICOUNT VAR

function aoc:puf/create/end

function aoc:core/print_score
function aoc:core/timer_end
