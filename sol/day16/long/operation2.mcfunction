
data modify storage long data set from storage buf4 data[0]
data modify storage long comp set from storage buf4 data[1]

function aoc:long/comp


data modify storage long data set value [0]
execute if score OP VAR matches 5 if score COMP LONG matches 1.. run data modify storage long data set value [1]
execute if score OP VAR matches 6 if score COMP LONG matches ..-1 run data modify storage long data set value [1]
execute if score OP VAR matches 7 if score COMP LONG matches 0 run data modify storage long data set value [1]

