


execute store result score C VAR run data get storage buf3 data[0]

#tellraw @a ["C ", {"score":{"objective":"VAR","name":"C"}}]
execute if score C VAR matches 1.. run data modify storage buf stack append value 0
execute if score C VAR matches 1.. run execute store result storage buf stack[-1] int 1 run scoreboard players get C VAR

execute if score C VAR matches ..0 run function aoc:sol/day10/check_closing

scoreboard players add INDEX VAR 0

function aoc:io/read/next/buffer3
execute if score VALID VAR matches 1.. if score CONTINUE REG matches 1 run function aoc:sol/day10/validate