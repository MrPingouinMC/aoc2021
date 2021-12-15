

data modify storage iobuff char set from storage iobuff data[0]
execute if data storage iobuff {"char":" "} run scoreboard players set CONTINUE REG 0

function aoc:io/next_iobuff
execute if score CONTINUE REG matches 1 run function aoc:io/iobuff_read_int