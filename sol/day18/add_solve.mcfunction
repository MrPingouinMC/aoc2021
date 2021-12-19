
data modify storage buf3 data set from storage buf2 data[0]
function aoc:io/init/buffer2
function aoc:io/read/shift/buffer2
function aoc:sol/day18/add_solve2

function aoc:io/read/next/buffer2
scoreboard players remove BBSIZE VAR 1
execute if score BBSIZE VAR matches 1.. run function aoc:sol/day18/add_solve