
scoreboard players set R REG 0
scoreboard players set SIGN REG 1
scoreboard players set STEP REG 0
scoreboard players set VALID REG 0


function aoc:io/read/priv/int_loop
execute if score VALID REG matches 1 run function aoc:io/read/priv/int_final

