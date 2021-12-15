
function aoc:puf/priv/init_find

scoreboard players set MARKED PUF 0
execute store result score MARKED PUF run data get storage puf temp[0].marked
data modify storage puf temp[0] merge value {marked:1}


function aoc:puf/priv/done
