


execute store result score V PUF run data get storage buf2 data[0]
scoreboard players operation W VAR = V PUF
scoreboard players operation W VAR %= 64 CONST

execute if score W VAR matches ..31 run data modify storage puf data set value {small:0,count:0,link:[]}
execute if score W VAR matches 32.. run data modify storage puf data set value {small:1,count:0,link:[]}
function aoc:puf/set


function aoc:io/read/shift/buffer2
execute if score CONTINUE REG matches 1 run function aoc:sol/day12/init_graph