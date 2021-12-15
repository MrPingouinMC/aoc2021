

data modify storage iobuf data[0] set from storage buf2 data[0]
function aoc:io/str/char_to_int
scoreboard players operation TARGET VAR = CHAR REG

scoreboard players set FOUND VAR 0
function aoc:io/init/buffer3
function aoc:sol/day14/find2


#tellraw @a ["Target", {"score":{"objective":"VAR","name":"TARGET"}}]
execute if score FOUND VAR matches 0 run data modify storage buf3 data insert 0 value {val:-1,count:0}
execute if score FOUND VAR matches 0 run execute store result storage buf3 data[0].val int 1 run scoreboard players get TARGET VAR


execute store result score C VAR run data get storage buf3 data[0].count
scoreboard players add C VAR 1
execute store result storage buf3 data[0].count int 1 run scoreboard players get C VAR

function aoc:io/read/next/buffer2
execute if score CONTINUE REG matches 1 at @s run function aoc:sol/day14/count