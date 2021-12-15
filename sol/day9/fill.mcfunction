
scoreboard players add BSIZE VAR 1 
setblock ~ ~ ~ diamond_block

execute positioned ~1 ~ ~ if block ~ ~ ~ air run function aoc:sol/day9/fill
execute positioned ~ ~ ~1 if block ~ ~ ~ air run function aoc:sol/day9/fill
execute positioned ~-1 ~ ~ if block ~ ~ ~ air run function aoc:sol/day9/fill
execute positioned ~ ~ ~-1 if block ~ ~ ~ air run function aoc:sol/day9/fill