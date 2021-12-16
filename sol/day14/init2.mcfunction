

data modify storage buf3 data append value {val:-1,map:[-1,-1]}


data modify storage iobuf data set value ["NO"]

data modify storage iobuf data[0] set from storage buf data[0].word[0]
function aoc:io/str/char_to_int
scoreboard players operation A VAR = CHAR REG
data modify storage iobuf data[0] set from storage buf data[0].word[1]
function aoc:io/str/char_to_int
scoreboard players operation B VAR = CHAR REG
data modify storage iobuf data[0] set from storage buf data[1].word[0]
function aoc:io/str/char_to_int
scoreboard players operation C VAR = CHAR REG

scoreboard players operation V VAR = A VAR
scoreboard players operation V VAR *= 100 CONST
scoreboard players operation V VAR += B VAR

scoreboard players operation M1 VAR = A VAR
scoreboard players operation M1 VAR *= 100 CONST
scoreboard players operation M1 VAR += C VAR

scoreboard players operation M2 VAR = C VAR
scoreboard players operation M2 VAR *= 100 CONST
scoreboard players operation M2 VAR += B VAR


data modify storage puf data set value {long:[0],next:[0]}
scoreboard players operation V PUF = V VAR
function aoc:puf/set

execute store result storage buf3 data[-1].val int 1 run scoreboard players get V VAR
execute store result storage buf3 data[-1].map[0] int 1 run scoreboard players get M1 VAR
execute store result storage buf3 data[-1].map[1] int 1 run scoreboard players get M2 VAR


function aoc:io/read/next/buffer
function aoc:io/read/next/buffer
execute if score CONTINUE REG matches 1 at @s run function aoc:sol/day14/init2