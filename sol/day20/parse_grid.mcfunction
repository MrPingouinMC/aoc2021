
data modify storage buf4 data set value []
function aoc:sol/day20/parse_grid2
data modify storage buf3 data append from storage buf4 data


function aoc:io/read/next/line
execute if score CONTINUE REG matches 1.. run function aoc:sol/day20/parse_grid