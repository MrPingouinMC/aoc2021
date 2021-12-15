

execute if score RPX VAR matches 8.. run scoreboard players remove RPX VAR 8
execute if score RPX VAR matches 1.. positioned ~ ~1 ~ run function aoc:sol/day5/move_perform

execute if score LOCK VAR matches 0 if score RPX VAR matches 0 if score RPY VAR matches 0 if score RPZ VAR matches 0 