scoreboard players set FOUND PUF 0
execute if score A VAR <= B VAR run scoreboard players set FOUND PUF 1
execute if score FOUND PUF matches 1 run scoreboard players set R PUF 1


scoreboard players operation V PUF = A VAR
scoreboard players operation V PUF *= 1000 CONST
scoreboard players operation V PUF += B VAR

execute if score FOUND PUF matches 0 run function aoc:puf/getint
