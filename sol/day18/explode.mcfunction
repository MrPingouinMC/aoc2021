

execute store result score C VAR run data get storage buf data[0]

execute if score C VAR matches -1 run scoreboard players add D VAR 1
execute if score C VAR matches -2 run scoreboard players remove D VAR 1

execute if score LAST_V VAR matches 0.. run scoreboard players add LAST_V VAR 1
execute if score C VAR matches 0.. run scoreboard players set LAST_V VAR 0

execute if score D VAR matches 5 run function aoc:sol/day18/do_explode

function aoc:io/read/shift/buffer
execute if score CONTINUE REG matches 1 run function aoc:sol/day18/explode