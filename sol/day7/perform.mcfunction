

#tellraw @a ["testing ", {"score":{"objective":"VAR","name":"ALIGN"}}]
scoreboard players set COST VAR 0
function aoc:io/init/buffer
function aoc:sol/day7/calc_cost

execute if score COST VAR >= MIN VAR run scoreboard players operation ALIGN VAR -= OFFSET VAR
execute if score COST VAR >= MIN VAR run scoreboard players operation OFFSET VAR *= -4 CONST
execute if score COST VAR >= MIN VAR run scoreboard players operation OFFSET VAR /= 5 CONST
execute if score COST VAR < MIN VAR run scoreboard players operation MIN_ALIGN VAR = ALIGN VAR
execute if score COST VAR < MIN VAR run scoreboard players operation MIN VAR = COST VAR

scoreboard players operation ALIGN VAR += OFFSET VAR

#tellraw @a ["cost ", {"score":{"objective":"VAR","name":"COST"}}, "  ",  {"score":{"objective":"VAR","name":"OFFSET"}}]

scoreboard players operation LAST VAR *= COST VAR
execute unless score OFFSET VAR matches 0 run function aoc:sol/day7/perform