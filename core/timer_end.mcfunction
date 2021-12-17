
execute store result score WTIMER REG run worldborder get 
scoreboard players operation WFULL REG -= WTIMER REG
scoreboard players operation S REG = WFULL REG
scoreboard players operation SD REG = WFULL REG

scoreboard players operation S REG /= 1000 CONST
scoreboard players operation SD REG %= 1000 CONST

data modify storage buf trail set value []
execute if score SD REG matches ..99 run data modify storage buf trail append value 0
execute if score SD REG matches ..9 run data modify storage buf trail append value 0
tellraw @a [{"text":"Time : ","color":"white"},{"text":"","color":"yellow","extra":[{"score":{"objective":"REG","name":"S"}}, ".", {"nbt":"trail[0]","storage":"buf"}, {"nbt":"trail[1]","storage":"buf"} ,{"score":{"objective":"REG","name":"SD"}}, "s"]}]

worldborder set 6000000
worldborder center 0 0
