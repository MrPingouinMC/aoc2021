
scoreboard players set PART AOC 2
scoreboard players set DAY AOC 10
#scoreboard players set DAY AOC 0

scoreboard players set YEAR AOC 2021
function aoc:core/load_input
function aoc:core/timer_start

data modify storage buf2 data set value []
function aoc:io/init/input
function aoc:sol/day10/parse

#tellraw @a ["buf2", {"nbt":"data","storage":"buf2"}]

scoreboard players set MULT LONG 5


data modify storage buf score set value []
scoreboard players set SCORE2 VAR 0
function aoc:io/init/buffer2
function aoc:sol/day10/solve

data modify storage sort arr set from storage buf score
function aoc:sort/median_long

data modify storage long data set from storage sort long


function aoc:core/print_score_long
function aoc:core/timer_end
