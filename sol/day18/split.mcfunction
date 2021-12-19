

execute store result score C VAR run data get storage buf data[0]

execute if score C VAR matches 10.. if score SPLIT VAR matches 0 run function aoc:sol/day18/do_split
execute if score C VAR matches 10.. run scoreboard players set SPLIT VAR 1


function aoc:io/read/shift/buffer
execute if score CONTINUE REG matches 1 run function aoc:sol/day18/split