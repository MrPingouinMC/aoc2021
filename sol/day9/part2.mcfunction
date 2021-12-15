
scoreboard players set PART AOC 2
scoreboard players set DAY AOC 9
#scoreboard players set DAY AOC 0

scoreboard players set YEAR AOC 2021
function aoc:core/load_input
function aoc:core/timer_start

data modify storage buf2 data set value []
function aoc:io/init/input
function aoc:sol/day9/parse


scoreboard players set COUNT VAR 0
scoreboard players set MA VAR 0
scoreboard players set MB VAR 0
scoreboard players set MC VAR 0


summon marker 17 0 33 {Tags:[builder]}
scoreboard players set STARTX VAR 17
scoreboard players set STARTY VAR 33
scoreboard players set FIRST VAR 1

function aoc:io/init/buffer2
execute as @e[tag=builder] at @s run function aoc:sol/day9/build


data modify storage buf4 data set value []
tp @e[tag=builder] 17 0 33
scoreboard players set STARTX VAR 17
scoreboard players set STARTY VAR 33
function aoc:io/init/buffer2
execute as @e[tag=builder] at @s run function aoc:sol/day9/sweep


function aoc:io/init/buffer4
execute as @e[tag=builder] at @s run function aoc:sol/day9/flood_fills

kill @e[tag=builder]


scoreboard players operation SOL VAR = MA VAR
scoreboard players operation SOL VAR *= MB VAR
scoreboard players operation SOL VAR *= MC VAR


function aoc:core/print_score
function aoc:core/timer_end
