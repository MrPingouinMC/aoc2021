
execute store result score R VAR run data get storage buf2 data[0]
execute store result score B VAR run data get storage buf2 data[1]
execute store result score C VAR run data get storage buf2 data[2]

scoreboard players operation R VAR += R VAR
scoreboard players operation R VAR += B VAR
scoreboard players operation R VAR += R VAR
scoreboard players operation R VAR += C VAR

function aoc:io/read/next/buffer2
function aoc:io/read/next/buffer2
function aoc:io/read/next/buffer2
scoreboard players add READ VAR 3 