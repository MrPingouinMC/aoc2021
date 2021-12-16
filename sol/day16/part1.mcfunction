
scoreboard players set PART AOC 1
scoreboard players set DAY AOC 16
#scoreboard players set DAY AOC 0

scoreboard players set YEAR AOC 2021
function aoc:core/load_input
function aoc:core/timer_start

data modify storage buf2 data set value []
function aoc:io/init/input
function aoc:sol/day16/parse

#tellraw @a ["buf2   ", {"nbt":"data","storage":"buf2"}]

data modify storage buf stack set value []
data modify storage buf4 data set value []
scoreboard players set VSUM VAR 0
scoreboard players set READ VAR 0
function aoc:io/init/buffer2
function aoc:sol/day16/read_packet

scoreboard players operation SOL VAR = VSUM VAR
function aoc:core/print_score
scoreboard players set PART AOC 2
scoreboard players operation SOL VAR = VAL VAR
function aoc:core/print_score

function aoc:core/timer_end
