
execute store result score WSIZE VAR run data get storage buf data[0].word
execute store result score OFFSET VAR run data get storage buf data[1].value

execute if score WSIZE VAR matches 7 run scoreboard players operation X VAR += OFFSET VAR
execute if score WSIZE VAR matches 4 run scoreboard players operation Y VAR += OFFSET VAR
execute if score WSIZE VAR matches 2 run scoreboard players operation Y VAR -= OFFSET VAR

function aoc:io/read/next/buffer
function aoc:io/read/next/buffer

execute if score CONTINUE REG matches 1 run function aoc:sol/day2/solve1