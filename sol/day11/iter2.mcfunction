
scoreboard players set X VAR 0
scoreboard players set Y VAR 0

scoreboard players set PASS VAR 0
tp @s 17 9 136
execute at @s run function aoc:sol/day11/sweep

scoreboard players set X VAR 0
scoreboard players set Y VAR 0


scoreboard players set NO_FLASH VAR 0
scoreboard players set PASS VAR 1
tp @s 17 9 136
execute at @s run function aoc:sol/day11/sweep

scoreboard players add STEP VAR 1

execute if score NO_FLASH VAR matches 1.. run function aoc:sol/day11/iter2
