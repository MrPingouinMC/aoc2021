


execute store result score VAL PUF run data get storage buf2 data[0]

execute if score V PUF matches 0 run scoreboard players operation EMPTY VAR = VAL PUF
execute if score V PUF matches 511 run scoreboard players operation FULL VAR = VAL PUF

function aoc:puf/setint

scoreboard players add V PUF 1

function aoc:io/read/next/buffer2
execute if score CONTINUE REG matches 1.. at @s run function aoc:sol/day20/init