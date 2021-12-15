execute if score X1 VAR > X3 VAR run scoreboard players operation X3 VAR = X1 VAR
execute if score X2 VAR < X4 VAR run scoreboard players operation X4 VAR = X2 VAR
execute if score Y1 VAR > Y3 VAR run scoreboard players operation Y3 VAR = Y1 VAR
execute if score Y2 VAR < Y4 VAR run scoreboard players operation Y4 VAR = Y2 VAR

data modify storage buf4 data append value [0, 0, 0, 0]
execute store result storage buf4 data[-1][0] int 1 run scoreboard players get X3 VAR
execute store result storage buf4 data[-1][1] int 1 run scoreboard players get Y3 VAR
execute store result storage buf4 data[-1][2] int 1 run scoreboard players get X4 VAR
execute store result storage buf4 data[-1][3] int 1 run scoreboard players get Y4 VAR

scoreboard players set XAREA VAR 1
scoreboard players operation XAREA VAR += X4 VAR
scoreboard players operation XAREA VAR -= X3 VAR

scoreboard players set YAREA VAR 1
scoreboard players operation YAREA VAR += Y4 VAR
scoreboard players operation YAREA VAR -= Y3 VAR

scoreboard players operation XAREA VAR *= YAREA VAR
scoreboard players operation ICOUNT VAR += XAREA VAR


#execute if score INTER VAR matches 2 run say intersect
#execute if score INTER VAR matches 2 run tellraw @a ["xy   : ", {"score":{"objective":"VAR","name":"X3"}}, "   ", {"score":{"objective":"VAR","name":"Y3"}}, "   ", {"score":{"objective":"VAR","name":"X4"}}, "   ", {"score":{"objective":"VAR","name":"Y4"}}]
