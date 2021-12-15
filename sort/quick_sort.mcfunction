

data modify storage sort stack set value []
data modify storage sort stack2 set value []
data modify storage sort pivot_stack set value []
scoreboard players set TYPE LONG 0

function aoc:sort/priv/quick_sort_base

#tellraw @a ["sorted ", {"nbt":"arr","storage":"sort"}]
