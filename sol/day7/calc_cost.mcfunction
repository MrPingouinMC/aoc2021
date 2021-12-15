

execute store result score POS VAR run data get storage buf data[0]
scoreboard players operation V VAR = POS VAR
scoreboard players operation V VAR -= ALIGN VAR
execute if score V VAR matches ..-1 run scoreboard players operation V VAR *= -1 CONST



execute if score PART AOC matches 2 run scoreboard players operation N VAR = V VAR
execute if score PART AOC matches 2 run scoreboard players add N VAR 1
execute if score PART AOC matches 2 run scoreboard players operation V VAR *= N VAR
execute if score PART AOC matches 2 run scoreboard players operation V VAR /= 2 CONST

#execute if score AOC PART matches 2 run tellraw @a ["n ", {"score":{"objective":"VAR","name":"V"}}]

scoreboard players operation COST VAR += V VAR

function aoc:io/read/shift/buffer
execute if score CONTINUE REG matches 1 run function aoc:sol/day7/calc_cost
