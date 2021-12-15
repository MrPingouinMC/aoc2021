

function aoc:io/read/word_to_int
scoreboard players operation C VAR = R REG
data modify storage buf2 data append value 0
execute store result storage buf2 data[-1] int 1 run scoreboard players get C VAR

function aoc:io/read/next/char


function aoc:io/read/word_to_int
scoreboard players operation C VAR = R REG
data modify storage buf2 data append value 0
execute store result storage buf2 data[-1] int 1 run scoreboard players get C VAR

function aoc:io/read/next/line
execute if score CONTINUE REG matches 1 run function aoc:sol/day12/parse