
execute store result score A VAR run data get storage buf2 data[0]

scoreboard players operation L VAR += L VAR
scoreboard players operation L VAR += A VAR

function aoc:io/read/next/buffer2

scoreboard players remove LENGTH VAR 1
execute if score LENGTH VAR matches 1.. run function aoc:sol/day16/read_length