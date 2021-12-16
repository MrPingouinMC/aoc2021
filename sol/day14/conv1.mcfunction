


execute store result score V PUF run data get storage buf3 data[0].val
execute store result score A VAR run data get storage buf3 data[0].map[0]
execute store result score B VAR run data get storage buf3 data[0].map[1]

function aoc:puf/get
data modify storage buf long set from storage puf data.long


data modify storage long add set from storage buf long
scoreboard players operation V PUF = A VAR
function aoc:puf/get
data modify storage long data set from storage puf data.next
function aoc:long/add
data modify storage puf data set value {next:[0]}
data modify storage puf data.next set from storage long data
function aoc:puf/set

data modify storage long add set from storage buf long
scoreboard players operation V PUF = B VAR
function aoc:puf/get
data modify storage long data set from storage puf data.next
function aoc:long/add
data modify storage puf data set value {next:[0]}
data modify storage puf data.next set from storage long data
function aoc:puf/set



function aoc:io/read/shift/buffer3
execute if score CONTINUE REG matches 1 at @s run function aoc:sol/day14/conv1
