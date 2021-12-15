

data modify storage long data append value 0
scoreboard players operation W LONG = V LONG 
scoreboard players operation W LONG %= D LONG 
scoreboard players operation V LONG -= W LONG 
scoreboard players operation V LONG /= D LONG 
execute store result storage long data[-1] int 1 run scoreboard players get W LONG

execute if score V LONG matches 1.. run function aoc:long/priv/from_int_loop