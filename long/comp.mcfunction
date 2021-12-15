#compare the value long data and long comp

scoreboard players set COMP LONG 0
execute store result score SIZE1 LONG run data get storage long data
execute store result score SIZE2 LONG run data get storage long comp

execute if score SIZE1 LONG > SIZE2 LONG run scoreboard players set COMP LONG 1
execute if score SIZE1 LONG < SIZE2 LONG run scoreboard players set COMP LONG -1
execute if score COMP LONG matches 0 run data modify storage long comp1 set from storage long data
execute if score COMP LONG matches 0 run data modify storage long comp2 set from storage long comp
execute if score COMP LONG matches 0 run function aoc:long/priv/comp

