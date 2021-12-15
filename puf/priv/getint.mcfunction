

data modify storage puf temp set from block ~ ~ ~ RecordItem.tag.data

function aoc:puf/priv/init_storage
execute if data storage puf temp[].index run function aoc:puf/priv/find

execute if score FOUND PUF matches 1 store result score R PUF run data get storage puf temp[0].value

data modify block ~ ~ ~ RecordItem.tag.data set from storage puf temp