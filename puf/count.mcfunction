
function aoc:puf/priv/coords
execute at @s run function aoc:puf/priv/move
execute at @s run function aoc:puf/priv/count

#execute at @s run tellraw @a ["count data", {"nbt":"RecordItem.tag.data", "block":"~ ~ ~"}]
#tellraw @a ["count ", {"nbt":"Pos","entity":"@s"}]