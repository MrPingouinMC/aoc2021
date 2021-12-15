


scoreboard players set VALID VAR 0
execute store result score A VAR run data get storage buf2 data[0][0]
execute store result score B VAR run data get storage buf2 data[0][1]
execute store result score C VAR run data get storage buf2 data[0][2]
execute store result score D VAR run data get storage buf2 data[0][3]

execute if score B VAR = D VAR if score A VAR > C VAR run function aoc:sol/day5/swapx

execute if score A VAR = C VAR if score B VAR > D VAR run function aoc:sol/day5/swapy

execute if score A VAR > C VAR if score B VAR > D VAR run function aoc:sol/day5/swapxy

execute if score A VAR > C VAR if score B VAR < D VAR run function aoc:sol/day5/swapxy

execute if score A VAR = C VAR run scoreboard players set VALID VAR 1
execute if score B VAR = D VAR run scoreboard players set VALID VAR 1

execute if score PART AOC matches 1 if score VALID VAR matches 1 run data modify storage buf3 data append from storage buf2 data[0]
execute if score PART AOC matches 2 run data modify storage buf3 data append from storage buf2 data[0]

#tellraw @a ["a b c d   : ", {"score":{"objective":"VAR","name":"A"}}, "   ", {"score":{"objective":"VAR","name":"B"}}, "   ", {"score":{"objective":"VAR","name":"C"}}, "   ", {"score":{"objective":"VAR","name":"D"}}]

function aoc:io/read/next/buffer2
execute if score CONTINUE REG matches 1 run function aoc:sol/day5/filter
