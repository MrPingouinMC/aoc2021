
function aoc:sol/day20/expand
function aoc:marker/reset

scoreboard players set LIT VAR 0
execute at @s run function aoc:sol/day20/iter2

scoreboard players operation NAIR VAR = AIR VAR
execute if score AIR VAR matches 0 if score EMPTY VAR matches 1 run scoreboard players set NAIR VAR 1
execute if score AIR VAR matches 1 if score FULL VAR matches 0 run scoreboard players set NAIR VAR 0
scoreboard players operation AIR VAR = NAIR VAR


scoreboard players remove ITER VAR 1
execute if score ITER VAR matches 1.. at @s run function aoc:sol/day20/iter