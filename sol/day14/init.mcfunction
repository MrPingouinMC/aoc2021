

data modify storage buf3 data append value {val:-1,map:"None"}


data modify storage iobuf data set value ["NO"]

data modify storage iobuf data[0] set from storage buf data[0].word[0]
function aoc:io/str/char_to_int
scoreboard players operation V VAR = CHAR REG
data modify storage iobuf data[0] set from storage buf data[0].word[1]
function aoc:io/str/char_to_int

scoreboard players operation V VAR *= 100 CONST
scoreboard players operation V VAR += CHAR REG

execute store result storage buf3 data[-1].val int 1 run scoreboard players get V VAR
data modify storage buf3 data[-1].map set from storage buf data[1].word[0]


function aoc:io/read/next/buffer
function aoc:io/read/next/buffer
execute if score CONTINUE REG matches 1 at @s run function aoc:sol/day14/init

