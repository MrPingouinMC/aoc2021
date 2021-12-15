
scoreboard players set PART AOC 2
scoreboard players set DAY AOC 6
#scoreboard players set DAY AOC 0

scoreboard players set YEAR AOC 2021
function aoc:core/load_input
function aoc:core/timer_start

function aoc:puf/create/new

function aoc:io/init/input
function aoc:sol/day6/parse


scoreboard players set SUM VAR 0
data modify storage buf sum set value [0]
scoreboard players set DAY VAR 256
data modify storage buf stack set value []


function aoc:io/init/buffer
function aoc:sol/day6/populate_stack

execute as @e[tag=puf] at @s run function aoc:sol/day6/dp_long

data modify storage long data set from storage buf sum

function aoc:core/print_score_long
function aoc:core/timer_end
