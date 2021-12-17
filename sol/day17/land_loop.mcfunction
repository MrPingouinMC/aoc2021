scoreboard players operation X VAR += CVX VAR
scoreboard players operation Y VAR += CVY VAR

execute if score CVX VAR matches 1.. run scoreboard players remove CVX VAR 1
scoreboard players remove CVY VAR 1

execute if score X VAR > X2 VAR run scoreboard players set LAND VAR -1
execute if score Y VAR < Y1 VAR run scoreboard players set LAND VAR -1

execute if score X VAR >= X1 VAR if score Y VAR <= Y2 VAR if score LAND VAR matches 0 run scoreboard players set LAND VAR 1

execute if score LAND VAR matches 0 run scoreboard players operation MY VAR > Y VAR
execute if score LAND VAR matches 0 run function aoc:sol/day17/land_loop