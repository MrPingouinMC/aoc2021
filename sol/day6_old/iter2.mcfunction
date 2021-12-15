

execute store result score V VAR run data get storage buf data[0]

scoreboard players remove V VAR 1
execute if score V VAR matches -1 run scoreboard players add EXTRA VAR 1
execute if score V VAR matches -1 run scoreboard players set V VAR 6

execute store result storage buf data[0] int 1 run scoreboard players get V VAR

function aoc:io/read/shift/buffer
execute if score CONTINUE REG matches 1 run function aoc:sol/day6/iter2