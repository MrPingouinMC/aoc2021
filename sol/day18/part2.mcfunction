
scoreboard players set PART AOC 2
scoreboard players set DAY AOC 18
#scoreboard players set DAY AOC 0

scoreboard players set YEAR AOC 2021
function aoc:core/load_input
function aoc:core/timer_start

data modify storage buf2 data set value []
function aoc:io/init/input
function aoc:sol/day18/parse

scoreboard players set MAG VAR 0
execute store result score BBSIZE VAR run data get storage buf2 data
function aoc:io/init/buffer2
function aoc:sol/day18/add_solve

scoreboard players operation SOL VAR = MAG VAR
function aoc:core/print_score


function aoc:core/timer_end
