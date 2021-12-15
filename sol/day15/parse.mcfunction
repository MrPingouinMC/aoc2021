

function aoc:io/read/int_single
function aoc:io/read/next/char


execute if score CONTINUE REG matches 0 run data modify storage buf2 data append from storage buf data
execute if score CONTINUE REG matches 0 run data modify storage buf data set value []
execute if score CONTINUE REG matches 0 run function aoc:io/read/next/line


execute if score CONTINUE REG matches 1 run function aoc:sol/day15/parse