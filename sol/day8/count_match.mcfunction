execute store result score SIZE VAR run data get storage buf2 data[0][0].word
execute if score SIZE VAR matches 2 run scoreboard players add COUNT VAR 1
execute if score SIZE VAR matches 3 run scoreboard players add COUNT VAR 1
execute if score SIZE VAR matches 4 run scoreboard players add COUNT VAR 1
execute if score SIZE VAR matches 7 run scoreboard players add COUNT VAR 1
data remove storage buf2 data[0][0]