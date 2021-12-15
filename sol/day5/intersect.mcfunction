


scoreboard players set VALID VAR 0
execute store result score X1 VAR run data get storage buf2 data[0][0]
execute store result score Y1 VAR run data get storage buf2 data[0][1]
execute store result score X2 VAR run data get storage buf2 data[0][2]
execute store result score Y2 VAR run data get storage buf2 data[0][3]

data modify storage buf4 data set value []
data modify storage buf3 data set from storage buf2 data 
function aoc:io/init/buffer3
function aoc:io/read/next/buffer3
execute if score CONTINUE REG matches 1 run function aoc:sol/day5/intersect2


execute store result score BSIZE VAR run data get storage buf4 data
execute if score BSIZE VAR matches 1.. run function aoc:io/init/buffer4
execute if score BSIZE VAR matches 1.. run function aoc:sol/day5/fill_array

#tellraw @a ["a b c d   : ", {"score":{"objective":"VAR","name":"A"}}, "   ", {"score":{"objective":"VAR","name":"B"}}, "   ", {"score":{"objective":"VAR","name":"C"}}, "   ", {"score":{"objective":"VAR","name":"D"}}]

function aoc:io/read/next/buffer2
execute if score CONTINUE REG matches 1 run function aoc:sol/day5/intersect
