


execute store result score V VAR run data get storage buf3 data[0]


function aoc:long/mult_const
data modify storage long add set value [1]
execute if score V VAR matches 1.. run function aoc:long/add

function aoc:io/read/next/buffer3
execute if score CONTINUE REG matches 1 at @s run function aoc:sol/day16/long/to_val