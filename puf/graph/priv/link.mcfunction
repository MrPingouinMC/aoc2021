

function aoc:puf/priv/init_find

execute if score FOUND PUF matches 0 run tellraw @a ["WARNNING : NON EXISTING NODE"]

data modify storage puf temp[0].link append value 0
execute store result storage puf temp[0].link[-1] int 1 run scoreboard players get LINK PUF

function aoc:puf/priv/done