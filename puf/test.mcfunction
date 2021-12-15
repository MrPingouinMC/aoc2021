

function aoc:puf/create/new

#402, 340
scoreboard players set V PUF 402340


execute as @e[tag=puf] at @s run function aoc:puf/count
execute as @e[tag=puf] at @s run function aoc:puf/count
execute as @e[tag=puf] at @s run function aoc:puf/count
execute as @e[tag=puf] at @s run function aoc:puf/count

tellraw @a ["count ", {"score":{"objective":"PUF","name":"COUNT"}}]