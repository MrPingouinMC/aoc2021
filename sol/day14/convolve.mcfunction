


data modify storage buf4 data set value []
function aoc:io/init/buffer2
scoreboard players remove BUFFER2_SIZE REG 1
function aoc:sol/day14/convolve2

data modify storage buf4 data append from storage buf2 data[0]
#tellraw @a ["buf4 ", {"nbt":"data","storage":"buf4"}]

data modify storage buf2 data set from storage buf4 data

scoreboard players remove STEP VAR 1
execute if score STEP VAR matches 1.. run function aoc:sol/day14/convolve