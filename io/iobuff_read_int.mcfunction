

function aoc:io/str/to_int

scoreboard players set CONTINUE REG 1

#If the first character is not 0-9+-
execute if score CHAR REG matches -3 run scoreboard players set CONTINUE REG 0

#If the character is not 0-9 after the first step
execute unless score CHAR REG matches 0..9 if score STEP REG matches 1.. run scoreboard players set CONTINUE REG 0

#If the first character is a - at the first step, set the sign to -1
execute if score STEP REG matches 0 if score CHAR REG matches -1 run scoreboard players set SIGN REG -1

#If the last read character is correct
execute if score CONTINUE REG matches 1 run function aoc:io/iobuff_read_int_step

#Pop the current char and check if there is a next one
execute if score CONTINUE REG matches 1 run function aoc:io/next_iobuff

#If no more valid character, finalize the result of R REG
execute if score CONTINUE REG matches 0 run function aoc:io/iobuff_read_int_final

execute if score CONTINUE REG matches 1 run function aoc:io/iobuff_read_int