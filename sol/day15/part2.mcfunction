
scoreboard players set PART AOC 1
scoreboard players set DAY AOC 15
scoreboard players set DAY AOC 0

scoreboard players set YEAR AOC 2021
function aoc:core/load_input
function aoc:core/timer_start

data modify storage buf2 data set value []
function aoc:io/init/input
function aoc:sol/day15/parse

execute store result score SIZEX MARKER run data get storage buf2 data[0]
execute store result score SIZEZ MARKER run data get storage buf2 data
execute positioned 17 9 157 run function aoc:marker/create

function aoc:io/init/buffer2
data modify storage buf3 data set from storage buf2 data[0]
data remove storage buf2 data[0]
function aoc:io/init/buffer3
execute as @e[tag=marker] at @s run function aoc:sol/day15/init2
function aoc:marker/end


data modify storage stack data set value [0]

kill @e[tag=rmarker]
summon marker 17 9 157 {Tags:[rmarker]}
scoreboard players set @e[tag=rmarker] VAR 0
execute as @e[tag=rmarker] at @s run function aoc:sol/day15/solve2
kill @e[tag=rmarker]

scoreboard players operation SOL VAR = V VAR

function aoc:core/print_score
function aoc:core/timer_end
