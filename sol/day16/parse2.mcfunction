
scoreboard players operation W VAR = CHAR REG
scoreboard players operation W VAR %= 2 CONST

scoreboard players operation CHAR REG /= 2 CONST
execute if score W VAR matches 0 run data modify storage buf3 data insert 0 value 0
execute if score W VAR matches 1 run data modify storage buf3 data insert 0 value 1

scoreboard players remove H VAR 1
execute if score H VAR matches 1.. run function aoc:sol/day16/parse2