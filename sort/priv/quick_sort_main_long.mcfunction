
data modify storage long data set from storage sort arr[-1]
data remove storage sort arr[-1]

data modify storage sort up set value []
data modify storage sort down set value []

execute store result score SIZE SORT run data get storage sort arr


execute if score SIZE SORT matches 1.. run function aoc:sort/priv/quick_sort_loop_long

data modify storage sort pivot_stack append from storage long data

data modify storage sort stack append from storage sort up
data modify storage sort arr set from storage sort down
function aoc:sort/priv/quick_sort_base

data modify storage sort stack2 append from storage sort arr 

data modify storage sort arr set from storage sort stack[-1]
data remove storage sort stack[-1]
function aoc:sort/priv/quick_sort_base

data modify storage sort arr append from storage sort pivot_stack[-1]
data remove storage sort pivot_stack[-1]

data modify storage sort arr append from storage sort stack2[-1][]
data remove storage sort stack2[-1]
