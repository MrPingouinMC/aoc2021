

data modify storage buf data append value 8

scoreboard players remove EXTRA VAR 1
execute if score EXTRA VAR matches 1.. run function aoc:sol/day6/add_extra