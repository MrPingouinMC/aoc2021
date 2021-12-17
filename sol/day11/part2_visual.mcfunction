
scoreboard players set PART AOC 2
scoreboard players set DAY AOC 11
#scoreboard players set DAY AOC 0

scoreboard players set YEAR AOC 2021
function aoc:core/load_input
function aoc:core/timer_start

data modify storage buf2 data set value []
function aoc:io/init/input
function aoc:sol/day11/parse

execute store result score SIZEX VAR run data get storage buf2 data[0]
execute store result score SIZEY VAR run data get storage buf2 data



kill @e[tag=builder]
summon marker 17 9 136 {Tags:[builder]}
scoreboard players set STARTX VAR 17
scoreboard players set STARTY VAR 136
scoreboard players set FIRST VAR 1

function aoc:io/init/buffer2
execute as @e[tag=builder] at @s run function aoc:sol/day11/build

scoreboard players set STEP VAR 0
execute as @e[tag=builder] at @s run function aoc:sol/day11/iter3
