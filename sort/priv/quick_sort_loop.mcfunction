
execute store result score VAL SORT run data get storage sort arr[-1]

execute if score VAL SORT > PIVOT SORT run data modify storage sort down append value 0
execute if score VAL SORT > PIVOT SORT run execute store result storage sort down[-1] int 1 run scoreboard players get VAL SORT

execute if score VAL SORT <= PIVOT SORT run data modify storage sort up append value 0
execute if score VAL SORT <= PIVOT SORT run execute store result storage sort up[-1] int 1 run scoreboard players get VAL SORT


data remove storage sort arr[-1]

scoreboard players remove SIZE SORT 1
execute if score SIZE SORT matches 1.. run function aoc:sort/priv/quick_sort_loop 