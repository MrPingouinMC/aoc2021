
setblock ~ ~ ~ jukebox{RecordItem:{id:"minecraft:pufferfish",Count:1b,tag:{risk:0}}}
#setblock ~ ~1 ~ air
execute unless score X VAR matches 4 run setblock ~1 ~ ~ diorite
execute unless score Y VAR matches 4 run setblock ~ ~ ~1 diorite

scoreboard players operation CRISK VAR = RISK VAR
scoreboard players operation CRISK VAR += X VAR
scoreboard players operation CRISK VAR += Y VAR
execute if score CRISK VAR matches 10.. run scoreboard players remove CRISK VAR 9

scoreboard players add X VAR 1
execute if score X VAR matches 5 run scoreboard players add Y VAR 1
execute if score X VAR matches 5 run scoreboard players set X VAR 0

execute store result block ~ ~ ~ RecordItem.tag.risk int 1 run scoreboard players get CRISK VAR

execute if score Y VAR matches ..4 positioned ~ ~2 ~ run function aoc:sol/day15/init3