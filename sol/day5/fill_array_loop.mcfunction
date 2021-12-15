



tellraw @a ["set ", {"score":{"objective":"VAR","name":"IX1"}}, "   ",  {"score":{"objective":"VAR","name":"IY1"}}]

scoreboard players operation CX VAR = IX1 VAR
scoreboard players operation CY VAR = IY1 VAR

function aoc:sol/day5/set_entry

execute if score IMODE VAR matches 0 run scoreboard players add IX1 VAR 1
execute if score IMODE VAR matches 1 run scoreboard players add IY1 VAR 1



scoreboard players remove ILIMIT VAR 1
execute if score ILIMIT VAR matches 0.. run function aoc:sol/day5/fill_array_loop