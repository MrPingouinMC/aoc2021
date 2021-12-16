
#TO FIX, it doesn't work in some cases
#add content of storage long data and long add
#Consume the long add storage

#tellraw @a ["add start ", {"nbt":"data","storage":"long"}, "    ", {"nbt":"add","storage":"long"}]

scoreboard players set REST LONG 0
execute store result score SIZE1 LONG run data get storage long data
execute store result score SIZE2 LONG run data get storage long add

execute if score SIZE2 LONG > SIZE1 LONG run tellraw @a ["Warning : a<b when attempting to make a - b"]

function aoc:long/priv/init_long
function aoc:long/priv/sub_loop


execute if score REST LONG matches 1.. run data modify storage long data append value 0
execute if score REST LONG matches 1.. run execute store result storage long data[-1] int 1 run scoreboard players get REST LONG

#tellraw @a ["add end ", {"nbt":"data","storage":"long"}]