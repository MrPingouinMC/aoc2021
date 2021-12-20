
execute store result entity @s Pos[0] double 1 run scoreboard players get START_X MARKER
execute store result entity @s Pos[1] double 1 run scoreboard players get START_Y MARKER
execute store result entity @s Pos[2] double 1 run scoreboard players get START_Z MARKER

scoreboard players set X MARKER 0
scoreboard players set Y MARKER 0
scoreboard players set Z MARKER 0

scoreboard players set DONE MARKER 0
