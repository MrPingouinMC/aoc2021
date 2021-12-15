data remove storage buf3 data[-1]
scoreboard players remove BUFFER3_SIZE REG 1
execute store result score CONTINUE REG if score BUFFER3_SIZE REG matches 1..