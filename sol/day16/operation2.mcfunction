
scoreboard players set VAL VAR 0
execute store result score A VAR run data get storage buf4 data[0]
execute store result score B VAR run data get storage buf4 data[1]

execute if score OP VAR matches 5 if score A VAR > B VAR run scoreboard players set VAL VAR 1
execute if score OP VAR matches 6 if score A VAR < B VAR run scoreboard players set VAL VAR 1
execute if score OP VAR matches 7 if score A VAR = B VAR run scoreboard players set VAL VAR 1
