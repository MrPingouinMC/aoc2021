
scoreboard players set PART AOC 2
scoreboard players set DAY AOC 1
scoreboard players set YEAR AOC 2021
function aoc:core/load_input
function aoc:core/timer_start



function aoc:io/init/input
function aoc:sol/day1/parse


scoreboard players set SOL VAR 0

scoreboard players set LAST VAR 0
data modify storage buf wind set value [0, 0, 0]

data modify storage buf wind[0] set from storage buf data[0]
data modify storage buf wind[1] set from storage buf data[1]
data modify storage buf wind[2] set from storage buf data[2]


execute store result score V VAR run data get storage buf wind[0]
scoreboard players operation LAST VAR += V VAR

execute store result score V VAR run data get storage buf wind[1]
scoreboard players operation LAST VAR += V VAR

execute store result score V VAR run data get storage buf wind[2]
scoreboard players operation LAST VAR += V VAR

data remove storage buf data[0]
data remove storage buf data[0]
data remove storage buf data[0]


function aoc:io/init/buffer
function aoc:sol/day1/solve2

function aoc:core/print_score
function aoc:core/timer_end


data remove storage buff wind