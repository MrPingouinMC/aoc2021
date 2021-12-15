data modify storage puf temp append from storage puf temp[0]
data remove storage puf temp[0]
scoreboard players remove PUF_SIZE REG 1
execute store result score CONTINUE REG if score PUF_SIZE REG matches 1..