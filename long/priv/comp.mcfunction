
execute store result score A LONG run data get storage long comp1[-1]
execute store result score B LONG run data get storage long comp2[-1]


execute if score A LONG > B LONG run scoreboard players set COMP LONG 1
execute if score A LONG < B LONG run scoreboard players set COMP LONG -1

data remove storage long comp1[-1]
data remove storage long comp2[-1]
scoreboard players remove SIZE1 LONG 1
execute if score COMP LONG matches 0 if score SIZE1 LONG matches 1.. run function aoc:long/priv/comp