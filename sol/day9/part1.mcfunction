
scoreboard players set PART AOC 1
scoreboard players set DAY AOC 9
#scoreboard players set DAY AOC 0

scoreboard players set YEAR AOC 2021
function aoc:core/load_input
function aoc:core/timer_start

data modify storage buf2 data set value []
function aoc:io/init/input
function aoc:sol/day9/parse


scoreboard players set COUNT VAR 0

summon marker 17 0 33 {Tags:[builder]}
scoreboard players set STARTX VAR 17
scoreboard players set STARTY VAR 33
scoreboard players set FIRST VAR 1

function aoc:io/init/buffer2
execute as @e[tag=builder] at @s run function aoc:sol/day9/build


tp @e[tag=builder] 17 0 33
scoreboard players set STARTX VAR 17
scoreboard players set STARTY VAR 33
function aoc:io/init/buffer2
execute as @e[tag=builder] at @s run function aoc:sol/day9/sweep

kill @e[tag=builder]

scoreboard players operation SOL VAR = COUNT VAR


function aoc:core/print_score
function aoc:core/timer_end
