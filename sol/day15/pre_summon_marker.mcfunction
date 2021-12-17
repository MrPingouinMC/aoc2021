

execute if block ~ ~ ~ jukebox unless block ~ ~1 ~ diorite run function aoc:sol/day15/summon_marker

#execute if block ~ ~ ~ diorite if block ~-1 ~ ~ jukebox if score SIZEX MARKER matches 10 positioned ~-10 ~2 ~ unless block ~ ~1 ~ diorite run function aoc:sol/day15/summon_marker
#execute if block ~ ~ ~ diorite if block ~ ~ ~-1 jukebox if score SIZEZ MARKER matches 10 positioned ~ ~10 ~-10 unless block ~ ~1 ~ diorite run function aoc:sol/day15/summon_marker

execute if block ~ ~ ~ diorite if block ~-1 ~ ~ jukebox if score SIZEX MARKER matches 100 positioned ~-100 ~2 ~ unless block ~ ~1 ~ diorite run function aoc:sol/day15/summon_marker
execute if block ~ ~ ~ diorite if block ~ ~ ~-1 jukebox if score SIZEZ MARKER matches 100 positioned ~ ~10 ~-100 unless block ~ ~1 ~ diorite run function aoc:sol/day15/summon_marker

#execute unless score SIZEX MARKER matches 10 unless score SIZEX MARKER matches 100 run tellraw @a ["Unimplemented for grid size : ", {"score":{"objective":"MARKER","name":"SIZEX"}}]
#execute unless score SIZEZ MARKER matches 10 unless score SIZEZ MARKER matches 100 run tellraw @a ["Unimplemented for grid size : ", {"score":{"objective":"MARKER","name":"SIZEX"}}]
