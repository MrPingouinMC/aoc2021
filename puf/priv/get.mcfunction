
function aoc:puf/priv/init_find

#execute if score FOUND PUF matches 0 run tellraw @a ["No node found"]
execute if score FOUND PUF matches 1 run data modify storage puf data set from storage puf temp[0]

function aoc:puf/priv/done
