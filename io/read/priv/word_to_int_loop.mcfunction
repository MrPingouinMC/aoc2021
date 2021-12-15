
#Acculate the chars into a score until a non number is found.

function aoc:io/str/char_to_int

execute if score CHAR REG matches 1..64 run scoreboard players operation R REG *= 64 CONST
execute if score CHAR REG matches 1..64 run scoreboard players operation R REG += CHAR REG

#Break if the character is a space
scoreboard players set CONTINUE REG 1
execute if data storage iobuf {"char":" "} run scoreboard players set CONTINUE REG 0
execute if data storage iobuf {"char":"-"} run scoreboard players set CONTINUE REG 0
execute if data storage iobuf {"char":"="} run scoreboard players set CONTINUE REG 0

execute if score CONTINUE REG matches 1 run function aoc:io/read/next/char
execute if score CONTINUE REG matches 1 run function aoc:io/read/priv/word_to_int_loop
