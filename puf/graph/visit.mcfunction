


function aoc:puf/priv/coords
execute at @s run function aoc:puf/priv/move
execute at @s run function aoc:puf/graph/priv/visit

#execute at @s run tellraw @a ["visit", {"nbt":"RecordItem.tag.data[0]","block":"~ ~ ~"}]
#tellraw @a ["visit  ", {"score":{"objective":"PUF","name":"V"}}]