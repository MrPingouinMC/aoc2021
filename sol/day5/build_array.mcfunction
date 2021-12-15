

 fill 16 ~ 16 31 ~ 31 stone
 fill 16 ~ 16 31 ~ 31 minecraft:jukebox{RecordItem:{id:"minecraft:pufferfish",Count:1,tag:{data:[]}}}

scoreboard players add POSY VAR 1
execute if score POSY VAR matches ..250 positioned ~ ~1 ~ run function aoc:sol/day5/build_array
