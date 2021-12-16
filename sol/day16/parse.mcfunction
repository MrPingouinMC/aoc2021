

function aoc:io/read/hex_single

data modify storage buf3 data set value []
scoreboard players set H VAR 4
function aoc:sol/day16/parse2
data modify storage buf2 data append from storage buf3 data[]

function aoc:io/read/next/char

execute if score CONTINUE REG matches 1 run function aoc:sol/day16/parse