
data modify storage long comp set from storage sort arr[-1]
function aoc:long/comp

execute if score COMP LONG matches 1.. run data modify storage sort up append from storage sort arr[-1]
execute if score COMP LONG matches ..0 run data modify storage sort down append from storage sort arr[-1]


data remove storage sort arr[-1]

scoreboard players remove SIZE SORT 1
execute if score SIZE SORT matches 1.. run function aoc:sort/priv/quick_sort_loop_long