
execute store result score V VAR run data get storage buf3 data[0]


fill ~ ~ ~ ~1 ~52 ~1 granite
#execute at @s run fill ~ ~ ~ ~ ~49 ~ stone

scoreboard players set X VAR 0
scoreboard players set Y VAR 0
execute store result score RISK VAR run data get storage buf3 data[0]
function aoc:sol/day15/init3

function aoc:marker/move

function aoc:io/read/next/buffer3
execute if score CONTINUE REG matches 0 run data modify storage buf3 data set from storage buf2 data[0]
execute if score CONTINUE REG matches 0 run function aoc:io/init/buffer3
execute if score CONTINUE REG matches 0 run function aoc:io/read/next/buffer2
execute if score CONTINUE REG matches 0 run setblock ~ ~50 ~ stone

execute if score CONTINUE REG matches 1 at @s run function aoc:sol/day15/init2