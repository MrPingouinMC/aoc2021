

data modify storage buf char set from storage buf4 data[0]

execute if data storage buf {char:"a"} run scoreboard players operation PROD VAR *= 2 CONST
execute if data storage buf {char:"b"} run scoreboard players operation PROD VAR *= 3 CONST
execute if data storage buf {char:"c"} run scoreboard players operation PROD VAR *= 5 CONST
execute if data storage buf {char:"d"} run scoreboard players operation PROD VAR *= 7 CONST
execute if data storage buf {char:"e"} run scoreboard players operation PROD VAR *= 11 CONST
execute if data storage buf {char:"f"} run scoreboard players operation PROD VAR *= 13 CONST
execute if data storage buf {char:"g"} run scoreboard players operation PROD VAR *= 17 CONST

function aoc:io/read/next/buffer4
execute if score CONTINUE REG matches 1 run function aoc:sol/day8/convert