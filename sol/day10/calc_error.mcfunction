
execute store result score LAST VAR run data get storage buf stack[-1]

function aoc:long/mult_const
data modify storage long add set value [0]
execute store result storage long add[0] int 1 run scoreboard players get LAST VAR
function aoc:long/add


data remove storage buf stack[-1]
scoreboard players remove SSIZE VAR 1
execute if score SSIZE VAR matches 1.. run function aoc:sol/day10/calc_error