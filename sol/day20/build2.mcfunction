



execute store result score B VAR run data get storage buf4 data[0]
fill ~-4 ~2 ~-4 ~4 ~2 ~4 air
execute if score B VAR matches 0 run setblock ~ ~1 ~ minecraft:white_stained_glass
execute if score B VAR matches 1 run setblock ~ ~1 ~ minecraft:black_stained_glass
function aoc:marker/move

function aoc:io/read/next/buffer4
execute if score CONTINUE REG matches 1.. at @s run function aoc:sol/day20/build2