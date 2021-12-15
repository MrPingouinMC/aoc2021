
#link the node V PUF to LINK PUF (only in a single direction)

function aoc:puf/priv/coords
execute at @s run function aoc:puf/priv/move
execute at @s run function aoc:puf/graph/priv/link

#execute at @s run tellraw @a ["link", {"nbt":"RecordItem.tag.data[0]","block":"~ ~ ~"}]
#tellraw @a ["lscores : ", {"score":{"objective":"PUF","name":"V"}}, "  ", {"score":{"objective":"PUF","name":"LINK"}}]