
#tellraw @a ["loop ", {"score":{"objective":"VAR","name":"VX"}}, "  ", {"score":{"objective":"VAR","name":"VY"}}]

scoreboard players operation CVX VAR = VX VAR
scoreboard players operation CVY VAR = VY VAR

scoreboard players set MY VAR 0
function aoc:sol/day17/land

execute if score LAND VAR matches 1 run scoreboard players add COUNT VAR 1
execute if score LAND VAR matches 1 run scoreboard players operation GMY VAR > MY VAR

#execute if score LAND VAR matches 1 run tellraw @a ["land ", {"score":{"objective":"VAR","name":"VX"}}, "  ", {"score":{"objective":"VAR","name":"VY"}}]


scoreboard players add VX VAR 1
execute if score VX VAR > MAX_X VAR run scoreboard players add VY VAR 1
execute if score VX VAR > MAX_X VAR run scoreboard players set VX VAR 0

execute if score VY VAR <= MAX_Y VAR run function aoc:sol/day17/solve_loop 