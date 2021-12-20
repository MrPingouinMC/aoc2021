function aoc:io/read/special_char

data modify storage buf2 data append value 0
execute if score CHAR REG matches 6 run data modify storage buf2 data[-1] set value 1

function aoc:io/read/next/char
execute if score CONTINUE REG matches 1.. run function aoc:sol/day20/parse