
#Inputs :
#scoreboard players set CX VAR 0 
#scoreboard players set CY VAR 0 

scoreboard players operation CY VAR *= 1000 CONST
scoreboard players operation CX VAR += CY VAR

scoreboard players operation RPX VAR = CY VAR
scoreboard players operation RPX VAR %= 16 CONST
scoreboard players operation CY VAR -= RPX VAR
scoreboard players operation CY VAR /= 16 CONST

scoreboard players operation RPZ VAR = CY VAR
scoreboard players operation RPZ VAR %= 16 CONST

scoreboard players operation CY VAR -= RPZ VAR
scoreboard players operation CY VAR /= 16 CONST

scoreboard players operation RPY VAR = CY VAR
scoreboard players operation RPZ VAR %= 250 CONST


scoreboard players set LOCK VAR 0
function aoc:sol/day5/move_perform