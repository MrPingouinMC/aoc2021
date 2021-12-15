
execute store result score A LONG run data get storage long data[0]

scoreboard players operation RESTC LONG = REST LONG
scoreboard players operation A LONG *= MULT LONG
scoreboard players operation REST LONG = A LONG
scoreboard players operation A LONG %= D LONG

scoreboard players operation REST LONG -= A LONG
scoreboard players operation REST LONG /= D LONG

scoreboard players operation A LONG += RESTC LONG
execute store result storage long data[0] int 1 run scoreboard players get A LONG



function aoc:long/priv/shift
execute if score CONTINUE REG matches 1 run function aoc:long/priv/mult_const_loop