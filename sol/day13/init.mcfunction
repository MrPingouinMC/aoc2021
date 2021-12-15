
execute store result score X VAR run data get storage buf2 data[0]
execute store result score Y VAR run data get storage buf2 data[1]
scoreboard players operation V PUF = X VAR
scoreboard players operation V PUF *= 1000 CONST
scoreboard players operation V PUF *= 5 CONST
scoreboard players operation V PUF += Y VAR

function aoc:puf/mark
#execute if score MARKED PUF matches 1 run tellraw @a ["already marked ?", {"score":{"objective":"VAR","name":"X"}}, "  ", {"score":{"objective":"VAR","name":"Y"}} , "  ", {"score":{"objective":"PUF","name":"V"}}]
#execute if score MARKED PUF matches 0 run tellraw @a ["marked", {"score":{"objective":"VAR","name":"X"}}, "  ", {"score":{"objective":"VAR","name":"Y"}} , "  ", {"score":{"objective":"PUF","name":"V"}}]

execute if score MARKED PUF matches 0 run scoreboard players add COUNT VAR 1

function aoc:io/read/shift/buffer2
function aoc:io/read/shift/buffer2
execute if score CONTINUE REG matches 1 at @s run function aoc:sol/day13/init