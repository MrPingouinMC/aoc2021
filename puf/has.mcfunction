
#add the value V PUF to the array

function aoc:puf/priv/coords
execute at @s run function aoc:puf/priv/move
execute at @s run function aoc:puf/priv/has

tellraw @a ["has ", {"nbt":"Pos","entity":"@s"}]