
#add the value V PUF to the array

function aoc:puf/priv/coords
execute at @s run function aoc:puf/priv/move
execute at @s run function aoc:puf/priv/marked


execute at @s run tellraw @a ["marked", {"nbt":"RecordItem.tag.data[0]", "block":"~ ~ ~"}]