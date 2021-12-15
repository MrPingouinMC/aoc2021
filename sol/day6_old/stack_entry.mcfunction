


data modify storage buf stack insert 0 value {day:-1,v:-1}
execute store result storage buf stack[0].day int 1 run scoreboard players get A VAR
execute store result storage buf stack[0].v int 1 run scoreboard players get B VAR