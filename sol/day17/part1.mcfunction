
scoreboard players set PART AOC 1
scoreboard players set DAY AOC 17
#scoreboard players set DAY AOC 0

scoreboard players set YEAR AOC 2021
function aoc:core/load_input
function aoc:core/timer_start

data modify storage buf2 data set value []
function aoc:io/init/input
function aoc:sol/day17/parse

scoreboard players set COUNT VAR 0

function aoc:sol/day17/solve


scoreboard players operation SOL VAR = GMY VAR
function aoc:core/print_score
scoreboard players set PART AOC 2
scoreboard players operation SOL VAR = COUNT VAR
function aoc:core/print_score



function aoc:core/timer_end
