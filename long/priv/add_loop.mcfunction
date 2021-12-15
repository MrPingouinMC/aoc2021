

scoreboard players set A LONG 0
scoreboard players set B LONG 0
execute if score SIZE1 LONG matches 1.. store result score A LONG run data get storage long data[0]
execute if score SIZE2 LONG matches 1.. store result score B LONG run data get storage long add[0]

#tellraw @a ["ab ", {"score":{"objective":"LONG","name":"A"}}, "  ",  {"score":{"objective":"LONG","name":"B"}}]

scoreboard players operation A LONG += B LONG
scoreboard players operation A LONG += REST LONG

scoreboard players operation REST LONG = A LONG
scoreboard players operation A LONG %= D LONG
scoreboard players operation REST LONG -= A LONG
scoreboard players operation REST LONG /= D LONG

#tellraw @a ["result ", {"score":{"objective":"LONG","name":"A"}}, "  rest : ",  {"score":{"objective":"LONG","name":"REST"}}]


execute if score SIZE1 LONG matches 0 if score SIZE2 LONG matches 1.. run data modify storage long data append value 0
execute store result storage long data[0] int 1 run scoreboard players get A LONG
# size problem, maybe swap first in the init
function aoc:long/priv/add_next
scoreboard players set CONTINUE REG 1
#tellraw @a ["sizes ", {"score":{"objective":"LONG","name":"SIZE1"}}, "   ", {"score":{"objective":"LONG","name":"SIZE2"}}]

execute if score SIZE1 LONG matches 0 if score SIZE2 LONG matches 0 run scoreboard players set CONTINUE REG 0
execute if score CONTINUE REG matches 1 run function aoc:long/priv/add_loop