

scoreboard players operation W VAR = C VAR
scoreboard players operation W VAR %= 2 CONST
scoreboard players operation A VAR = C VAR
scoreboard players operation A VAR /= 2 CONST
scoreboard players operation B VAR = A VAR
execute if score W VAR matches 1 run scoreboard players add B VAR 1

data modify storage buf data insert 1 value -2
data modify storage buf data insert 0 value 0
data modify storage buf data insert 0 value -1
scoreboard players add BUFFER_SIZE REG 3

execute store result storage buf data[1] int 1 run scoreboard players get A VAR
execute store result storage buf data[2] int 1 run scoreboard players get B VAR

#tellraw @a ["split end", {"nbt":"data","storage":"buf"}]