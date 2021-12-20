

tp @s ~1 ~ ~
scoreboard players add X MARKER 1

execute if score X MARKER >= SIZEX MARKER run tp @s ~ ~ ~1
execute if score X MARKER >= SIZEX MARKER run execute store result entity @s Pos[0] double 1 run scoreboard players get START_X MARKER
execute if score X MARKER >= SIZEX MARKER run scoreboard players add Z MARKER 1
execute if score X MARKER >= SIZEX MARKER run scoreboard players set X MARKER 0
execute if score Z MARKER >= SIZEZ MARKER run scoreboard players set DONE MARKER 1
