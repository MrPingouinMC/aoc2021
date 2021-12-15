

data remove storage sort arr[-1]
scoreboard players remove HSIZE SORT 1
execute if score HSIZE SORT matches 1.. run function aoc:sort/priv/mid 