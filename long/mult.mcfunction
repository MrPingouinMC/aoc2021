


#mult content of storage long data and long add
#Consume the long add storage
#Might not work with negative numbers or zero


data modify storage long mult1 set from storage long data
data modify storage long mult2 set from storage long add
data modify storage long mult3 set value []

scoreboard players set MADD LONG 0
execute store result score MSIZE1 LONG run data get storage long data
execute store result score MSIZE2 LONG run data get storage long add
function aoc:long/priv/mult_loop

execute store result score MSIZE3 LONG run data get storage long mult3
data modify storage long data set value [0]
execute if score MSIZE3 LONG matches 1.. run function aoc:long/priv/mult_cumul
#TODO remiving triming zeros
