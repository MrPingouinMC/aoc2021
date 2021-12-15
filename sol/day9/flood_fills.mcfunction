
data modify entity @s Pos set from storage buf4 data[0]
execute at @s run tp @s ~ 9 ~

execute at @s run setblock ~ ~ ~ diamond_block
scoreboard players set BSIZE VAR 0

execute at @s run function aoc:sol/day9/fill

execute if score BSIZE VAR > MC VAR run scoreboard players operation MC VAR = BSIZE VAR
execute if score MC VAR > MB VAR run scoreboard players operation MC VAR >< MB VAR
execute if score MB VAR > MA VAR run scoreboard players operation MA VAR >< MB VAR

#tellraw @a ["bsize ", {"score":{"objective":"VAR","name":"BSIZE"}}]

function aoc:io/read/next/buffer4
execute if score CONTINUE REG matches 1 at @s run function aoc:sol/day9/flood_fills