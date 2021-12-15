

#tellraw @a ["bf", {"nbt":"data[0]","storage":"buf2"}]
fill ~-1 ~ ~ ~-1 ~9 ~ diorite

data modify storage buf3 data set from storage buf2 data[0]
function aoc:io/init/buffer3
execute at @s run function aoc:sol/day9/build2

execute store result entity @s Pos[0] double 1 run scoreboard players get STARTX VAR
tp @s ~ ~ ~1

scoreboard players set FIRST VAR 0

function aoc:io/read/shift/buffer2
execute if score CONTINUE REG matches 1 at @s run function aoc:sol/day9/build