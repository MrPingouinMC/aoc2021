
#This was specially made for odd only case, but you could get the (arr[-1] + arr[-2]) / 2 for even case
#It also, for now consume the array

function aoc:sort/quick_sort_long
scoreboard players set HSIZE SORT -1

execute store result score HSIZE SORT run data get storage sort arr
scoreboard players remove HSIZE SORT 1
scoreboard players operation HSIZE SORT /= 2 CONST

execute if score HSIZE SORT matches 1.. run function aoc:sort/priv/mid

data modify storage sort long set from storage sort arr[-1]