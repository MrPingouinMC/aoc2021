

execute store result score X1 VAR run data get storage buf data[0]
execute store result score X2 VAR run data get storage buf data[1]
execute store result score Y1 VAR run data get storage buf data[2]
execute store result score Y2 VAR run data get storage buf data[3]

scoreboard players set VX VAR 0
scoreboard players operation MAX_X VAR = X2 VAR

scoreboard players operation VY VAR = Y1 VAR
scoreboard players operation MAX_Y VAR = Y1 VAR
scoreboard players operation MAX_Y VAR *= -1 CONST

scoreboard players set GMY VAR 0

function aoc:sol/day17/solve_loop 