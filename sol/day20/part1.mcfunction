
scoreboard players set PART AOC 1
scoreboard players set DAY AOC 20
#scoreboard players set DAY AOC 0

scoreboard players set YEAR AOC 2021
function aoc:core/load_input
function aoc:core/timer_start

data modify storage buf2 data set value []
function aoc:io/init/input
function aoc:sol/day20/parse
function aoc:io/read/next/line
function aoc:io/read/next/line
data modify storage buf3 data set value []
function aoc:sol/day20/parse_grid

execute store result score GSIZE VAR run data get storage buf3 data

#init in puff array
function aoc:puf/create/new
function aoc:io/init/buffer2
scoreboard players set V PUF 0
execute as @e[tag=puf] at @s run function aoc:sol/day20/init

scoreboard players operation SIZEX MARKER = GSIZE VAR
scoreboard players operation SIZEZ MARKER = GSIZE VAR
execute positioned 217 9 460 run function aoc:marker/create
function aoc:marker/clear_area
function aoc:io/init/buffer3
execute as @e[tag=marker] at @s run function aoc:sol/day20/build

scoreboard players set AIR VAR 0
scoreboard players set ITER VAR 2
execute as @e[tag=marker] at @s run function aoc:sol/day20/iter


function aoc:marker/end
function aoc:puf/create/end

scoreboard players operation SOL VAR = LIT VAR
function aoc:core/print_score


function aoc:core/timer_end
