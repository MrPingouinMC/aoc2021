
 execute if score SIZE PUF matches 1 run fill 16 ~ 16 31 ~ 31 stone
 execute if score SIZE PUF matches 1 run fill 16 ~ 16 31 ~ 31 minecraft:jukebox{RecordItem:{id:"minecraft:pufferfish",Count:1,tag:{data:[]}}}

 execute if score SIZE PUF matches 2 run fill 16 ~ 16 47 ~ 47 stone
 execute if score SIZE PUF matches 2 run fill 16 ~ 16 47 ~ 47 minecraft:jukebox{RecordItem:{id:"minecraft:pufferfish",Count:1,tag:{data:[]}}}

scoreboard players add POSY PUF 1
execute if score POSY PUF matches ..250 positioned ~ ~1 ~ run function aoc:puf/create/loop
