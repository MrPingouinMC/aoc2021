data modify storage iobuf data set from storage input data[0]
execute store result score IOBUFFER_SIZE REG run data get storage iobuf data
data remove storage input data[0]
scoreboard players remove INPUT_SIZE REG 1
execute store result score CONTINUE REG if score INPUT_SIZE REG matches 1..