
#Acculate the chars into a score until a non number is found.

function aoc:io/str/to_int

#Break if the character is not a valid number
scoreboard players set CONTINUE REG 1
execute unless score CHAR REG matches 0..9 run scoreboard players set CONTINUE REG 0

execute if score CONTINUE REG matches 1 run function aoc:io/read/priv/int_step

execute if score CONTINUE REG matches 1 run function aoc:io/read/next/char
execute if score CONTINUE REG matches 1 run function aoc:io/read/priv/int_loop
