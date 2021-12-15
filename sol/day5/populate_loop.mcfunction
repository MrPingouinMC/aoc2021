
#tellraw @a ["sub   : ", {"score":{"objective":"VAR","name":"X1"}}, "   ", {"score":{"objective":"VAR","name":"Y1"}}, "   ", {"score":{"objective":"VAR","name":"X2"}}, "   ", {"score":{"objective":"VAR","name":"Y2"}}]


scoreboard players operation V PUF = X1 VAR
scoreboard players operation V PUF *= 1000 CONST
scoreboard players operation V PUF += Y1 VAR

function aoc:puf/count
execute if score COUNT PUF matches 2 run scoreboard players add ICOUNT VAR 1 
#tellraw @a ["count ", {"score":{"objective":"PUF","name":"COUNT"}}]
#execute if score COUNT PUF matches 2 run tellraw @a ["intersect twice  ", {"score":{"objective":"VAR","name":"ICOUNT"}}, "    ", {"score":{"objective":"VAR","name":"X1"}}, "   ", {"score":{"objective":"VAR","name":"Y1"}}]

execute if score MODE VAR matches 0 run scoreboard players add Y1 VAR 1
execute if score MODE VAR matches 1 run scoreboard players add X1 VAR 1

execute if score MODE VAR matches 2 run scoreboard players add X1 VAR 1
execute if score MODE VAR matches 2 run scoreboard players add Y1 VAR 1

execute if score MODE VAR matches 3 run scoreboard players add X1 VAR 1
execute if score MODE VAR matches 3 run scoreboard players remove Y1 VAR 1

scoreboard players set CONTINUE REG 1
execute if score X1 VAR > X2 VAR run scoreboard players set CONTINUE REG 0
execute if score MODE VAR matches ..2 if score Y1 VAR > Y2 VAR run scoreboard players set CONTINUE REG 0
execute if score MODE VAR matches 3 if score Y1 VAR < Y2 VAR run scoreboard players set CONTINUE REG 0
execute if score CONTINUE REG matches 1 run function aoc:sol/day5/populate_loop