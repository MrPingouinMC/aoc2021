
scoreboard players set PART AOC 1
scoreboard players set DAY AOC 10
#scoreboard players set DAY AOC 0

scoreboard players set YEAR AOC 2021
function aoc:core/load_input
function aoc:core/timer_start

data modify storage buf2 data set value []
function aoc:io/init/input
function aoc:sol/day10/parse

#tellraw @a ["buf2", {"nbt":"data","storage":"buf2"}]

scoreboard players set SCORE VAR 0
function aoc:io/init/buffer2
function aoc:sol/day10/solve


scoreboard players operation SOL VAR = SCORE VAR


function aoc:core/print_score
function aoc:core/timer_end
