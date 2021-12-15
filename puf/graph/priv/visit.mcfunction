
function aoc:puf/priv/init_find

execute if score FOUND PUF matches 0 run tellraw @a ["WARNNING : NON EXISTING NODE"]
data modify storage puf temp[0].visited set value 1

function aoc:puf/priv/done