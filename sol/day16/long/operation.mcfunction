
data modify storage long add set from storage buf4 data[0]
data modify storage long comp set from storage buf4 data[0]

execute store result score V VAR run data get storage buf4 data[0]

execute if score OP VAR matches 0 run function aoc:long/add
execute if score OP VAR matches 1 run function aoc:long/mult
execute if score OP VAR matches 2..3 run function aoc:long/comp

execute if score OP VAR matches 2 if score COMP LONG matches 1.. run data modify storage long data set from storage buf4 data[0]
execute if score OP VAR matches 3 if score COMP LONG matches ..-1 run data modify storage long data set from storage buf4 data[0]

function aoc:io/read/next/buffer4
execute if score CONTINUE REG matches 1 at @s run function aoc:sol/day16/long/operation