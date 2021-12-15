


execute store result score C VAR run data get storage buf2 data[0]
function aoc:io/read/next/buffer2
execute store result score D VAR run data get storage buf2 data[0]

#tellraw @a ["linking ", {"score":{"objective":"VAR","name":"C"}}, "and", {"score":{"objective":"VAR","name":"D"}}]

scoreboard players operation V PUF = C VAR
scoreboard players operation LINK PUF = D VAR
execute unless score V PUF = END_CONST VAR unless score LINK PUF = START_CONST VAR run function aoc:puf/graph/link

scoreboard players operation V PUF = D VAR
scoreboard players operation LINK PUF = C VAR
execute unless score V PUF = END_CONST VAR unless score LINK PUF = START_CONST VAR run function aoc:puf/graph/link


function aoc:io/read/next/buffer2
execute if score CONTINUE REG matches 1 run function aoc:sol/day12/link