

execute store result score V PUF run data get storage buf3 data[0].val
execute store result score B VAR run data get storage buf3 data[0].map[0]
scoreboard players operation B VAR %= 100 CONST

scoreboard players operation A VAR = V PUF
scoreboard players operation A VAR %= 100 CONST

function aoc:puf/get
data modify storage buf long set from storage puf data.long


scoreboard players operation V PUF = A VAR
function aoc:puf/get
execute unless data storage puf data.count run data modify storage puf data.count set value [0]
execute unless data storage puf data.count run tellraw @a ["createa", {"score":{"objective":"VAR","name":"A"}}]
data modify storage long add set from storage buf long
data modify storage long data set from storage puf data.count
function aoc:long/add
data modify storage puf data.count set from storage long data
function aoc:puf/set


scoreboard players operation V PUF = B VAR
function aoc:puf/get
execute unless data storage puf data.count run data modify storage puf data.count set value [0]
execute unless data storage puf data.count run tellraw @a ["createb", {"score":{"objective":"VAR","name":"B"}}]
data modify storage long add set from storage buf long
data modify storage long data set from storage puf data.count
function aoc:long/add
data modify storage puf data.count set from storage long data
function aoc:puf/set



function aoc:io/read/shift/buffer3
execute if score CONTINUE REG matches 1 at @s run function aoc:sol/day14/cumulate