
scoreboard players set X VAR 0
scoreboard players set Y VAR 0

scoreboard players set PASS VAR 0
tp @e[tag=builder] 17 9 136
execute as @e[tag=builder] at @s run function aoc:sol/day11/sweep

scoreboard players set X VAR 0
scoreboard players set Y VAR 0


scoreboard players set NO_FLASH VAR 0
scoreboard players set PASS VAR 1
tp @e[tag=builder] 17 9 136
execute as @e[tag=builder] at @s run function aoc:sol/day11/sweep

scoreboard players add STEP VAR 1
#execute at @s if score NO_FLASH VAR matches 1.. run function aoc:sol/day11/iter2


execute if score NO_FLASH VAR matches 1.. run schedule function aoc:sol/day11/iter2 1t

execute if score NO_FLASH VAR matches 0 run kill @e[tag=builder]
execute if score NO_FLASH VAR matches 0 run scoreboard players operation SOL VAR = STEP VAR
execute if score NO_FLASH VAR matches 0 run function aoc:core/print_score