

execute store result score A LONG run data get storage long data[-1]
execute if score FIRST LONG matches 0 if score A LONG matches ..99 run data modify storage long display append value 0
execute if score FIRST LONG matches 0 if score A LONG matches ..9 run data modify storage long display append value 0
execute if score FIRST LONG matches 0 if score A LONG matches 0 run data modify storage long display append value 0

data modify storage long display append from storage long data[-1]

scoreboard players set FIRST LONG 0

data modify storage long data insert 0 from storage long data[-1]
data remove storage long data[-1]
scoreboard players remove LONG_SIZE LONG 1

execute if score LONG_SIZE LONG matches 1.. run function aoc:long/priv/display_loop