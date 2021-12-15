
#if x > fold: new pos => fold*2 - x

scoreboard players set FOLDED VAR 0

execute store result score X VAR run data get storage buf2 data[0]
execute store result score Y VAR run data get storage buf2 data[1]

#tellraw @a ["xy ", {"score":{"objective":"VAR","name":"X"}}, "  ", {"score":{"objective":"VAR","name":"Y"}}, "   " , {"score":{"objective":"VAR","name":"FOLD_POS"}}]

execute if score AXIS VAR matches 0 if score X VAR > FOLD_POS VAR run scoreboard players set FOLDED VAR 1
execute if score AXIS VAR matches 1 if score Y VAR > FOLD_POS VAR run scoreboard players set FOLDED VAR 1

scoreboard players operation V PUF = X VAR
scoreboard players operation V PUF *= 1000 CONST
scoreboard players operation V PUF *= 5 CONST
scoreboard players operation V PUF += Y VAR

#execute if score FOLDED VAR matches 1.. run tellraw @a ["folding", {"score":{"objective":"VAR","name":"X"}}, "  ", {"score":{"objective":"VAR","name":"Y"}}]

execute if score FOLDED VAR matches 1.. run function aoc:puf/unmark
execute if score FOLDED VAR matches 1.. run scoreboard players remove COUNT VAR 1
execute if score AXIS VAR matches 0 if score FOLDED VAR matches 1.. run scoreboard players operation X VAR *= -1 CONST
execute if score AXIS VAR matches 0 if score FOLDED VAR matches 1.. run scoreboard players operation X VAR += FOLD_POS2 VAR

execute if score AXIS VAR matches 1 if score FOLDED VAR matches 1.. run scoreboard players operation Y VAR *= -1 CONST
execute if score AXIS VAR matches 1 if score FOLDED VAR matches 1.. run scoreboard players operation Y VAR += FOLD_POS2 VAR

scoreboard players operation V PUF = X VAR
scoreboard players operation V PUF *= 1000 CONST
scoreboard players operation V PUF *= 5 CONST
scoreboard players operation V PUF += Y VAR
#execute if score FOLDED VAR matches 1.. run tellraw @a ["folding new", {"score":{"objective":"VAR","name":"X"}}, "  ", {"score":{"objective":"VAR","name":"Y"}}]
execute if score FOLDED VAR matches 1.. run function aoc:puf/mark
execute if score FOLDED VAR matches 1.. if score MARKED PUF matches 0 run scoreboard players add COUNT VAR 1

execute if score PART AOC matches 2 run scoreboard players set TO_ADD VAR 0
execute if score PART AOC matches 2 if score FOLDED VAR matches 0 run scoreboard players set TO_ADD VAR 1
execute if score PART AOC matches 2 if score FOLDED VAR matches 1 if score MARKED PUF matches 0 run scoreboard players set TO_ADD VAR 1
execute if score PART AOC matches 2 run data modify storage buf4 data append value -1
execute if score PART AOC matches 2 run data modify storage buf4 data append value -1
execute if score PART AOC matches 2 run execute store result storage buf4 data[-2] int 1 run scoreboard players get X VAR
execute if score PART AOC matches 2 run execute store result storage buf4 data[-1] int 1 run scoreboard players get Y VAR

function aoc:io/read/next/buffer2
function aoc:io/read/next/buffer2
execute if score CONTINUE REG matches 1 at @s run function aoc:sol/day13/fold
