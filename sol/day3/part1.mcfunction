
scoreboard players set PART AOC 1
scoreboard players set DAY AOC 3
#scoreboard players set DAY AOC 0

scoreboard players set YEAR AOC 2021
function aoc:core/load_input
function aoc:core/timer_start


function aoc:io/init/input
function aoc:sol/day3/parse


#Store the number of entries
execute store result score TARGET VAR run data get storage buf data
scoreboard players operation TARGET VAR /= 2 CONST

#We just calculate a cumulative sum and check if the amount is >= TARGET
function aoc:io/init/buffer

#Implement as pop buf1 to buf2
data modify storage buf3 data set from storage buf data[0].bint
function aoc:io/read/next/buffer

function aoc:sol/day3/solve1

scoreboard players set COMMON1 VAR 0
scoreboard players set COMMON2 VAR 0
function aoc:io/init/buffer3
function aoc:sol/day3/reduce


scoreboard players operation SOL VAR = COMMON1 VAR
scoreboard players operation SOL VAR *= COMMON2 VAR




function aoc:core/print_score
function aoc:core/timer_end
