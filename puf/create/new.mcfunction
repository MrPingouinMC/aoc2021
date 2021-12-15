

kill @e[tag=puf]
scoreboard players set SIZE PUF 1

function aoc:puf/create/var


scoreboard players set POSY PUF 0
execute positioned 16 0 16 run function aoc:puf/create/loop
