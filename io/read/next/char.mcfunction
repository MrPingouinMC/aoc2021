data remove storage iobuf data[0]
scoreboard players remove IOBUFFER_SIZE REG 1
execute store result score CONTINUE REG if score IOBUFFER_SIZE REG matches 1..