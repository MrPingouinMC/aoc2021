
#tellraw @a ["set v", {"score":{"objective":"PUF","name":"V"}}]
#tellraw @a ["set val ", {"score":{"objective":"PUF","name":"VAL"}}]


function aoc:puf/priv/coords
execute at @s run function aoc:puf/priv/move
execute at @s run function aoc:puf/priv/setint

#tellraw @a ["set ", {"nbt":"Pos","entity":"@s"}]
#execute at @s run tellraw @a ["set data", {"nbt":"RecordItem.tag.data", "block":"~ ~ ~"}]