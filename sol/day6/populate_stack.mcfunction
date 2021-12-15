

data modify storage buf stack append value {day:-1,v:-1,main:1}
execute store result storage buf stack[-1].day int 1 run scoreboard players get DAY VAR
data modify storage buf stack[-1].v set from storage buf data[0]

function aoc:io/read/next/buffer
execute if score CONTINUE REG matches 1 run function aoc:sol/day6/populate_stack
