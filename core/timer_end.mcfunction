
execute store result score WTIMER REG run worldborder get 
scoreboard players operation WFULL REG -= WTIMER REG
scoreboard players operation S REG = WFULL REG
scoreboard players operation SD REG = WFULL REG

scoreboard players operation S REG /= 1000 CONST
scoreboard players operation SD REG %= 1000 CONST

tellraw @a ["Time : ", {"score":{"objective":"REG","name":"S"}}, ".", {"score":{"objective":"REG","name":"SD"}}, "s"]
worldborder set 6000000
worldborder center 0 0
