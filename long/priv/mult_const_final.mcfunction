
scoreboard players operation A LONG = REST LONG
scoreboard players operation A LONG %= D LONG
data modify storage long data append value 0
execute store result storage long data[-1] int 1 run scoreboard players get A LONG

scoreboard players operation REST LONG /= D LONG
execute if score REST LONG matches 1.. run function aoc:long/priv/mult_const_final