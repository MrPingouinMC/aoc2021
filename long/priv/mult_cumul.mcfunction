

data modify storage long add set from storage long mult3[0]
function aoc:long/add



scoreboard players remove MSIZE3 LONG 1
data remove storage long mult3[0]
execute if score MSIZE3 LONG matches 1.. run function aoc:long/priv/mult_cumul
