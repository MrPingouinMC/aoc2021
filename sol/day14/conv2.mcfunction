




execute store result score V PUF run data get storage buf3 data[0].val

function aoc:puf/get
data modify storage puf data.long set from storage puf data.next

data modify storage puf data.next set value [0]
function aoc:puf/set


function aoc:io/read/shift/buffer3
execute if score CONTINUE REG matches 1 at @s run function aoc:sol/day14/conv2
