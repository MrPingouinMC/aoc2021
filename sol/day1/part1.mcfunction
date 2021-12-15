
scoreboard players set PART AOC 1
scoreboard players set DAY AOC 1
scoreboard players set YEAR AOC 2021
function aoc:core/load_input
function aoc:core/timer_start



function aoc:io/init/input
function aoc:sol/day1/parse

tellraw @a ["buff", {"nbt":"data","storage":"buf"}]
#Set the first value
execute store result score LAST VAR run data get storage buf data[0]
scoreboard players set SOL VAR 0

function aoc:io/init/buffer
function aoc:sol/day1/solve1

function aoc:core/print_score
function aoc:core/timer_end
