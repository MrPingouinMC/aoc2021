
scoreboard players set SPE VAR 0
function aoc:io/read/int_single
execute if score CHAR REG matches -3 run scoreboard players set SPE VAR 1
execute if score CHAR REG matches -3 run function aoc:io/read/special_char
execute if score SPE VAR matches 1 if score CHAR REG matches 2 run scoreboard players set CHAR REG -1
execute if score SPE VAR matches 1 if score CHAR REG matches 0 run scoreboard players set SPE VAR 2

execute if score SPE VAR matches ..1 run data modify storage buf3 data append value 0
execute if score SPE VAR matches ..1 run execute store result storage buf3 data[-1] int 1 run scoreboard players get CHAR REG



function aoc:io/read/next/char
execute if score CONTINUE REG matches 1 run function aoc:sol/day18/parse2