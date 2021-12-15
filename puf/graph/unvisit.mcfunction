


function aoc:puf/priv/coords
execute at @s run function aoc:puf/priv/move
execute at @s run function aoc:puf/graph/priv/unvisit

#execute at @s run tellraw @a ["unvisit", {"nbt":"RecordItem.tag.data[0]","block":"~ ~ ~"}]
#tellraw @a ["unvisit  ", {"score":{"objective":"PUF","name":"V"}}]