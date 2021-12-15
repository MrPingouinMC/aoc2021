
data modify storage buf4 data set from storage buf3 data[0].word
scoreboard players set PROD VAR 1
execute store result score PSIZE VAR run data get storage buf4 data
function aoc:io/init/buffer4
function aoc:sol/day8/convert
data modify storage buf data append value {"prod":-1,"size":-1}
execute store result storage buf data[-1].prod int 1 run scoreboard players get PROD VAR
execute store result storage buf data[-1].size int 1 run scoreboard players get PSIZE VAR


function aoc:io/read/next/buffer3
execute if score CONTINUE REG matches 1 run function aoc:sol/day8/convert_all