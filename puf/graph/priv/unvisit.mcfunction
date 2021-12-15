function aoc:puf/priv/init_find

execute if score FOUND PUF matches 0 run tellraw @a ["WARN NON EXISTING NODE"]
data modify storage puf temp[0].visited set value 0

function aoc:puf/priv/done
