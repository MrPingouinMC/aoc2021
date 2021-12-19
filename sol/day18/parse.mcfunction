

data modify storage buf3 data set value []
function aoc:sol/day18/parse2
data modify storage buf2 data append from storage buf3 data

function aoc:io/read/next/line
execute if score CONTINUE REG matches 1 run function aoc:sol/day18/parse