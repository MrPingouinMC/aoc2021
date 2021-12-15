
function aoc:puf/priv/coords
execute at @s run function aoc:puf/priv/move
execute at @s run function aoc:puf/priv/uncount

#execute at @s run tellraw @a ["uncount data", {"nbt":"RecordItem.tag.data", "block":"~ ~ ~"}]
#tellraw @a ["count ", {"nbt":"Pos","entity":"@s"}]