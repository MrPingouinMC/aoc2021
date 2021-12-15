
#Marker util use to iterate over a area 2D
#The marker is expected to only last a single tick and multiple marker cannot be used.
#This is to ensure a minimal @e use.

function aoc:marker/end
summon marker ~ ~ ~ {Tags:[marker]}

execute as @e[tag=marker] store result score START_X MARKER run data get entity @s Pos[0]
execute as @e[tag=marker] store result score START_Y MARKER run data get entity @s Pos[1]
execute as @e[tag=marker] store result score START_Z MARKER run data get entity @s Pos[2]

scoreboard players set X MAKER 0
scoreboard players set Y MAKER 0
scoreboard players set Z MAKER 0

#2D horizontal area
scoreboard players set MODE MAKER 2