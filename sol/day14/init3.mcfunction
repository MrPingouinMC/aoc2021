


data modify storage iobuf data[0] set from storage buf2 data[0]
function aoc:io/str/char_to_int
scoreboard players operation A VAR = CHAR REG
data modify storage iobuf data[0] set from storage buf2 data[1]
function aoc:io/str/char_to_int
scoreboard players operation B VAR = CHAR REG

scoreboard players operation V PUF = A VAR
scoreboard players operation V PUF *= 100 CONST
scoreboard players operation V PUF += B VAR

function aoc:puf/get
data modify storage long data set from storage puf data.long
data modify storage long add set value [1]
function aoc:long/add
data modify storage puf data.long set from storage long data
function aoc:puf/set

function aoc:io/read/next/buffer2
execute if score CONTINUE REG matches 1 at @s run function aoc:sol/day14/init3