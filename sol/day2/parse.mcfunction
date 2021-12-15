
function aoc:io/read/word

#Skip space
function aoc:io/read/next/char

function aoc:io/read/int_obj
#tellraw @a ["offset ", {"score":{"objective":"REG","name":"score"}}]
#tellraw @a ["buf", {"nbt":"data","storage":"buf"}]

function aoc:io/read/next/line
execute if score CONTINUE REG matches 1 run function aoc:sol/day2/parse