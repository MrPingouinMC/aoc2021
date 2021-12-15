
scoreboard players set I PUF -1
execute store result score I PUF run data get storage puf temp[0].index
execute if score I PUF = V PUF run scoreboard players set FOUND PUF 1


execute if score FOUND PUF matches 0 run function aoc:puf/priv/shift
execute if score FOUND PUF matches 0 if score CONTINUE REG matches 1 run function aoc:puf/priv/find