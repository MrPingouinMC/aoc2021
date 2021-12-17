
data modify storage long data insert 0 value 0

scoreboard players remove MADD_LOOP LONG 1
execute if score MADD_LOOP LONG matches 1.. run function aoc:long/priv/mult_shift