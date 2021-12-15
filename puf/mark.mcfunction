
#add the value V PUF to the array

function aoc:puf/priv/coords
execute at @s run function aoc:puf/priv/move
execute at @s run function aoc:puf/priv/mark

#execute at @s run tellraw @a ["mark", {"nbt":"RecordItem.tag.data[0]", "block":"~ ~ ~"}]
#tellraw @a ["mark marked ", {"score":{"objective":"PUF","name":"MARKED"}}]