


data modify storage buf4 data set from storage buf3 data[0]
function aoc:io/init/buffer4
execute at @s run function aoc:sol/day20/build2


function aoc:io/read/next/buffer3
execute if score CONTINUE REG matches 1.. at @s run function aoc:sol/day20/build