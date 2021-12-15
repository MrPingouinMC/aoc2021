
data modify storage iobuf data[0] set from storage buf2 data[0]
function aoc:io/str/char_to_int
scoreboard players operation TOFIND VAR = CHAR REG
data modify storage iobuf data[0] set from storage buf2 data[1]
function aoc:io/str/char_to_int

scoreboard players operation TOFIND VAR *= 100 CONST
scoreboard players operation TOFIND VAR += CHAR REG

scoreboard players set FOUND VAR 0
function aoc:io/init/buffer3
function aoc:sol/day14/find

execute if score FOUND VAR matches 0 run say not found

data modify storage buf4 data append from storage buf2 data[0]
data modify storage buf4 data append from storage buf3 data[0].map


function aoc:io/read/next/buffer2
execute if score CONTINUE REG matches 1 at @s run function aoc:sol/day14/convolve2