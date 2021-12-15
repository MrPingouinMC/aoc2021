
tag @s remove min
scoreboard players operation V VAR = @s VAR

execute positioned ~-1 ~ ~ unless block ~ ~1 ~ diorite if block ~ ~ ~ jukebox run function aoc:sol/day15/summon_marker
execute positioned ~1 ~ ~ unless block ~ ~1 ~ diorite if block ~ ~ ~ jukebox run function aoc:sol/day15/summon_marker
execute positioned ~ ~ ~1 unless block ~ ~1 ~ diorite if block ~ ~ ~ jukebox run function aoc:sol/day15/summon_marker
execute positioned ~ ~ ~-1 unless block ~ ~1 ~ diorite if block ~ ~ ~ jukebox run function aoc:sol/day15/summon_marker

execute if block ~ ~2 ~ stone run kill @e[tag=rmarker]

setblock ~ ~1 ~ diorite
kill @s

scoreboard players operation MIN VAR = @e[tag=rmarker,limit=1] VAR
scoreboard players operation MIN VAR < @e[tag=rmarker] VAR
execute as @e[tag=rmarker] if score @s VAR = MIN VAR run tag @s add min 
execute as @e[tag=min,limit=1] at @s run function aoc:sol/day15/solve 