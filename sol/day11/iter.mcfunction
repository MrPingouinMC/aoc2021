



scoreboard players set X VAR 0
scoreboard players set Y VAR 0

scoreboard players set PASS VAR 0
tp @e[tag=builder] 17 9 136
execute at @s run function aoc:sol/day11/sweep

scoreboard players set X VAR 0
scoreboard players set Y VAR 0

scoreboard players set PASS VAR 1
tp @e[tag=builder] 17 9 136
execute at @s run function aoc:sol/day11/sweep

scoreboard players remove STEP VAR 1
execute at @s if score STEP VAR matches 1.. run function aoc:sol/day11/iter
