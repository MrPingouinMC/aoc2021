

fill ~-4 ~2 ~-4 ~4 ~2 ~4 air
scoreboard players set BIN VAR 0
function aoc:sol/day20/bin
setblock ~ ~1 ~ diamond_block
scoreboard players operation V PUF = BIN VAR
function aoc:puf/getint
execute if score R PUF matches 0 run setblock ~ ~1 ~ white_stained_glass 
execute if score R PUF matches 1 run setblock ~ ~1 ~ black_stained_glass 
execute if score R PUF matches 1 run scoreboard players add LIT VAR 1

function aoc:marker/move
execute if score DONE MARKER matches 0 at @s run function aoc:sol/day20/iter2