
data modify storage puf temp set from block ~ ~ ~ RecordItem.tag.data

function aoc:puf/priv/init_storage
execute if data storage puf temp[].index run function aoc:puf/priv/find

execute if score FOUND PUF matches 0 run data modify storage puf temp insert 0 value {index:-1} 
execute if score FOUND PUF matches 0 run execute store result storage puf temp[0].index int 1 run scoreboard players get V PUF