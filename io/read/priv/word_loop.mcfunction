
#Acculate the chars into a score until a non number is found.

function aoc:io/str/to_char

#Break if the character is a space
scoreboard players set CONTINUE REG 1
execute if data storage iobuf {"char":" "} run scoreboard players set CONTINUE REG 0
execute if data storage iobuf {"char":"-"} run scoreboard players set CONTINUE REG 0
execute if data storage iobuf {"char":"="} run scoreboard players set CONTINUE REG 0

execute if score CONTINUE REG matches 1 run data modify storage iobuf word append from storage iobuf char

execute if score CONTINUE REG matches 1 run function aoc:io/read/next/char
execute if score CONTINUE REG matches 1 run function aoc:io/read/priv/word_loop
