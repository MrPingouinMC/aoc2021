
scoreboard players set PART AOC 1
scoreboard players set DAY AOC 18
#scoreboard players set DAY AOC 0

scoreboard players set YEAR AOC 2021
function aoc:core/load_input
function aoc:core/timer_start

data modify storage buf2 data set value []
function aoc:io/init/input
function aoc:sol/day18/parse

#function aoc:io/init/buffer2
#function aoc:sol/day18/add
#tellraw @a ["added ", {"nbt":"data","storage":"buf"}]
#function aoc:sol/day18/reduce
#tellraw @a ["reduced ", {"nbt":"data","storage":"buf"}]


data modify storage buf data set from storage buf2 data[0]
function aoc:io/read/next/buffer2
function aoc:io/init/buffer2
execute if score BUFFER_SIZE REG matches 1.. run function aoc:sol/day18/add_loop

#tellraw @a ["final ", {"nbt":"data","storage":"buf"}]

data modify storage buf stack set value []
function aoc:io/read/next/buffer
function aoc:io/init/buffer
function aoc:sol/day18/magnitude

scoreboard players operation SOL VAR = R VAR
function aoc:core/print_score


function aoc:core/timer_end
