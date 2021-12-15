

execute if score SMALL VAR matches 1 run function aoc:puf/count
execute if score COUNT PUF matches 2 run scoreboard players set LOCK VAR 1

data modify storage buf stack append from storage puf data.link
execute if data storage buf stack[-1][-1] run function aoc:sol/day12/bfs
data remove storage buf stack[-1]

execute store result score V PUF run data get storage buf stack[-1][-1]
function aoc:puf/uncount
execute if score COUNT PUF matches 1 run scoreboard players set LOCK VAR 0
