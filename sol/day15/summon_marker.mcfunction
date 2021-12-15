
execute store result score RISK VAR run data get block ~ ~ ~ RecordItem.tag.risk
scoreboard players operation RISK VAR += V VAR

execute if block ~ ~1 ~ stone run scoreboard players operation @e[dx=1,dy=1,dz=1] VAR < RISK VAR

execute unless block ~ ~1 ~ stone run summon marker ~ ~ ~ {Tags:[rmarker,init]}
execute unless block ~ ~1 ~ stone run scoreboard players operation @e[tag=init] VAR = RISK VAR
execute unless block ~ ~1 ~ stone run tag @e remove init

setblock ~ ~1 ~ stone
