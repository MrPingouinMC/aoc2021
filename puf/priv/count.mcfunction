

function aoc:puf/priv/init_find

execute if score FOUND PUF matches 0 run data modify storage puf temp[0].count set value 1

scoreboard players set COUNT PUF 1
execute if score FOUND PUF matches 1 run execute store result score COUNT PUF run data get storage puf temp[0].count
execute if score FOUND PUF matches 1 run scoreboard players add COUNT PUF 1
execute if score FOUND PUF matches 1 run execute store result storage puf temp[0].count int 1 run scoreboard players get COUNT PUF


function aoc:puf/priv/done
