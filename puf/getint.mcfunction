
function aoc:puf/priv/coords
execute at @s run function aoc:puf/priv/move
execute at @s run function aoc:puf/priv/getint


#tellraw @a ["get ", {"score":{"objective":"PUF","name":"R"}}]