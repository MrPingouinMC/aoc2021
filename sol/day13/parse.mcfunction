

execute if score FOLD VAR matches 1 run function aoc:io/read/word
execute if score FOLD VAR matches 1 run function aoc:io/read/next/char
execute if score FOLD VAR matches 1 run function aoc:io/read/word
execute if score FOLD VAR matches 1 run function aoc:io/read/next/char
execute if score FOLD VAR matches 1 run function aoc:io/str/char_to_int
execute if score FOLD VAR matches 1 run data modify storage buf3 data append value -1
execute if score FOLD VAR matches 1 run execute store result storage buf3 data[-1] int 1 run scoreboard players get CHAR REG
execute if score FOLD VAR matches 1 run function aoc:io/read/next/char
execute if score FOLD VAR matches 1 run function aoc:io/read/next/char
execute if score FOLD VAR matches 1 run function aoc:io/read/int_obj
execute if score FOLD VAR matches 1 run data modify storage buf3 data append from storage buf data[-1].value

execute if score FOLD VAR matches 0 run function aoc:io/read/int
execute if score FOLD VAR matches 0 run function aoc:io/read/next/char
execute if score FOLD VAR matches 0 run function aoc:io/read/int

execute if score FOLD VAR matches 0 run data modify storage buf2 data append from storage buf data[]
execute if score FOLD VAR matches 0 run data modify storage buf data set value []
execute if score FOLD VAR matches 0 if score VALID REG matches 0 run scoreboard players set FOLD VAR 1



function aoc:io/read/next/line
execute if score CONTINUE REG matches 1 run function aoc:sol/day13/parse