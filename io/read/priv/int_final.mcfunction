
scoreboard players operation R REG *= SIGN REG

execute if score INPUT_MODE AOC matches 0 run data modify storage buf data append value 0
execute if score INPUT_MODE AOC matches 0 run execute store result storage buf data[-1] int 1 run scoreboard players get R REG

execute if score INPUT_MODE AOC matches 1 run data modify storage buf data append value {"value":0}
execute if score INPUT_MODE AOC matches 1 run execute store result storage buf data[-1].value int 1 run scoreboard players get R REG
