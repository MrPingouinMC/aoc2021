#Multiply the long by a constant MULT LONG

scoreboard players set REST LONG 0
function aoc:long/priv/init_long
function aoc:long/priv/mult_const_loop
execute if score REST LONG matches 1.. run function aoc:long/priv/mult_const_final