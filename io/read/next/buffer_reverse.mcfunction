data remove storage buf data[-1]
scoreboard players remove BUFFER_SIZE REG 1
execute store result score CONTINUE REG if score BUFFER_SIZE REG matches 1..