
scoreboard players set PART AOC 1
scoreboard players set DAY AOC 8
#scoreboard players set DAY AOC 0

scoreboard players set YEAR AOC 2021
function aoc:core/load_input
function aoc:core/timer_start

data modify storage buf2 data set value []
function aoc:io/init/input
function aoc:sol/day8/parse

scoreboard players set COUNT VAR 0

function aoc:io/init/buffer2
function aoc:sol/day8/count

scoreboard players operation SOL VAR = COUNT VAR

function aoc:core/print_score
function aoc:core/timer_end
