
#add the value V PUF to the array

data modify storage puf data set value {}

function aoc:puf/priv/coords
execute at @s run function aoc:puf/priv/move
execute at @s run function aoc:puf/priv/get


#execute at @s run tellraw @a ["get data", {"nbt":"RecordItem.tag.data", "block":"~ ~ ~"}]
#execute at @s run tellraw @a ["get data2", {"nbt":"data", "storage":"puf"}]
#tellraw @a ["get ", {"nbt":"Pos","entity":"@s"}]