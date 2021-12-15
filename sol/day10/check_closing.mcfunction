

execute store result score LAST VAR run data get storage buf stack[-1]

scoreboard players operation LAST VAR *= -1 CONST

execute unless score LAST VAR = C VAR if score C VAR matches -1 run scoreboard players add SCORE VAR 3
execute unless score LAST VAR = C VAR if score C VAR matches -2 run scoreboard players add SCORE VAR 57
execute unless score LAST VAR = C VAR if score C VAR matches -3 run scoreboard players add SCORE VAR 1197
execute unless score LAST VAR = C VAR if score C VAR matches -4 run scoreboard players add SCORE VAR 25137
execute unless score LAST VAR = C VAR run scoreboard players set VALID VAR 0

data remove storage buf stack[-1]