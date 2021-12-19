

execute store result score V PUF run data get storage buf stack[-1][-1]

data modify storage buf path append from storage buf stack[-1][-1]

function aoc:puf/get
execute store result score VISITED VAR run data get storage puf data.count
execute store result score SMALL VAR run data get storage puf data.small
execute if score V PUF = END_CONST VAR run scoreboard players operation VISITED VAR = MAX_VISIT VAR
execute if score V PUF = END_CONST VAR run scoreboard players add COUNT VAR 1

execute if score LOCK VAR matches 1 run scoreboard players operation VISITED VAR *= 2 CONST 
execute if score VISITED VAR < MAX_VISIT VAR run function aoc:sol/day12/bfs_visit

data remove storage buf path[-1]

data remove storage buf stack[-1][-1]
execute store result score DSIZE VAR run data get storage buf stack[-1]
execute if score DSIZE VAR matches 1.. run function aoc:sol/day12/bfs
