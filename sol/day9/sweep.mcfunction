

data modify storage buf3 data set from storage buf2 data[0]
function aoc:io/init/buffer3
execute at @s run function aoc:sol/day9/sweep2

execute store result entity @s Pos[0] double 1 run scoreboard players get STARTX VAR
tp @s ~ ~ ~1


function aoc:io/read/shift/buffer2
execute if score CONTINUE REG matches 1 at @s run function aoc:sol/day9/sweep