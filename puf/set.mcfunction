
#set the value at index V PUF to the content of puf data storage
#It actually uses merge to avoid messing with other data

function aoc:puf/priv/coords
execute at @s run function aoc:puf/priv/move
execute at @s run function aoc:puf/priv/set

#tellraw @a ["set ", {"nbt":"Pos","entity":"@s"}]
#execute at @s run tellraw @a ["set data", {"nbt":"data", "storage":"puf"}]
#execute at @s run tellraw @a ["set data", {"nbt":"RecordItem.tag", "block":"~ ~ ~"}]