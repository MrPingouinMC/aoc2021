
execute store result score V VAR run data get storage buf3 data[0]

execute at @s run fill ~-1 ~1 ~-1 ~1 ~6 ~1 air replace jukebox
execute at @s run fill ~ ~1 ~ ~1 ~6 ~1 granite 
execute at @s run setblock ~ ~ ~ stone
execute at @s run setblock ~ ~ ~ jukebox{RecordItem:{id:"minecraft:pufferfish",Count:1b,tag:{risk:0}}}
execute at @s run data modify block ~ ~ ~ RecordItem.tag.risk set from storage buf3 data[0]



function aoc:marker/move

function aoc:io/read/next/buffer3
execute if score CONTINUE REG matches 0 run data modify storage buf3 data set from storage buf2 data[0]
execute if score CONTINUE REG matches 0 run function aoc:io/init/buffer3
execute if score CONTINUE REG matches 0 run function aoc:io/read/next/buffer2
execute if score CONTINUE REG matches 0 run setblock ~ ~2 ~ stone

execute if score CONTINUE REG matches 1 at @s run function aoc:sol/day15/init