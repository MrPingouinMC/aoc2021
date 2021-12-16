
execute store result score V PUF run data get storage buf3 data[0].val
execute store result score V VAR run data get storage buf3 data[0].map[0]
scoreboard players operation V VAR %= 100 CONST

function aoc:puf/get
data modify storage buf long set from storage puf data.long


scoreboard players operation V PUF = V VAR
function aoc:puf/get
execute unless data storage puf data.count run data modify storage puf data.count set value [0]
data modify storage long add set from storage buf long
data modify storage long data set from storage puf data.count
function aoc:long/add
data modify storage puf data.count set from storage long data
function aoc:puf/set



function aoc:io/read/shift/buffer3
execute if score CONTINUE REG matches 1 at @s run function aoc:sol/day14/cumulate1