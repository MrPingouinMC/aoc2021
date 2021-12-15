
scoreboard players set PART AOC 1
scoreboard players set DAY AOC 6
#scoreboard players set DAY AOC 0

scoreboard players set YEAR AOC 2021
function aoc:core/load_input
function aoc:core/timer_start

function aoc:io/init/input
function aoc:sol/day6/parse

tellraw @a ["arr 2", {"nbt":"data","storage":"buf"}]

scoreboard players set CYCLE VAR 18
function aoc:sol/day6/iter


execute store result score SOL VAR run data get storage buf data


function aoc:core/print_score
function aoc:core/timer_end
