


scoreboard players set INDEX VAR 0
scoreboard players set VALID VAR 1
data modify storage buf stack set value []
data modify storage buf3 data set from storage buf2 data[0]
function aoc:io/init/buffer3
function aoc:sol/day10/validate

scoreboard players set CSUM VAR 0
execute if score PART AOC matches 2 if score VALID VAR matches 1.. run data modify storage long data set value [0]
execute if score PART AOC matches 2 if score VALID VAR matches 1.. store result score SSIZE VAR run data get storage buf stack
#execute if score PART AOC matches 2 if score VALID VAR matches 1.. store result score SSIZE VAR run tellraw @a ["ssize", {"score":{"objective":"VAR","name":"SSIZE"}}]
execute if score PART AOC matches 2 if score VALID VAR matches 1.. if score SSIZE VAR matches 1.. run function aoc:sol/day10/calc_error
execute if score PART AOC matches 2 if score VALID VAR matches 1.. run data modify storage buf score append from storage long data


function aoc:io/read/next/buffer2
execute if score CONTINUE REG matches 1 run function aoc:sol/day10/solve