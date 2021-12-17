

execute store result score MULT LONG run data get storage long mult2[0]
data modify storage long data set from storage long mult1
function aoc:long/mult_const

scoreboard players operation MADD_LOOP LONG = MADD LONG
execute if score MADD_LOOP LONG matches 1.. run function aoc:long/priv/mult_shift

data modify storage long mult3 append from storage long data

scoreboard players add MADD LONG 1
scoreboard players remove MSIZE2 LONG 1
data remove storage long mult2[0]

execute if score MSIZE2 LONG matches 1.. run function aoc:long/priv/mult_loop
