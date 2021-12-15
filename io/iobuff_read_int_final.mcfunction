scoreboard players operation R REG *= SIGN REG
data modify storage buf data append value 0
execute store result storage buf data[-1] int 1 run scoreboard players get R REG