
function aoc:io/read/next/buffer

data modify storage buf stack append value {a:-1}
execute store result storage buf stack[-1].a int 1 run scoreboard players get A VAR

function aoc:sol/day18/magnitude

execute store result score A VAR run data get storage buf stack[-1].a
data remove storage buf stack[-1]
