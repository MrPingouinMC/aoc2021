
scoreboard players set PART AOC 2
scoreboard players set DAY AOC 3
#scoreboard players set DAY AOC 0

scoreboard players set YEAR AOC 2021
function aoc:core/load_input
function aoc:core/timer_start


function aoc:io/init/input
function aoc:sol/day3/parse


#Store the number of entries

scoreboard players set OXY VAR 0
scoreboard players set CO2 VAR 0

data modify storage buf3 data set from storage buf data

scoreboard players set MODE VAR 0
function aoc:sol/day3/solve2

data modify storage buf data set from storage buf3 data

scoreboard players set MODE VAR 1
function aoc:sol/day3/solve2

scoreboard players operation SOL VAR = OXY VAR
scoreboard players operation SOL VAR *= CO2 VAR


function aoc:core/print_score
function aoc:core/timer_end
