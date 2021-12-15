
#Shift data and next add

execute if score SIZE1 LONG matches 1.. run data modify storage long data append from storage long data[0]
execute if score SIZE1 LONG matches 1.. run data remove storage long data[0]
execute if score SIZE1 LONG matches 1.. run scoreboard players remove SIZE1 LONG 1

execute if score SIZE2 LONG matches 1.. run data remove storage long add[0]
execute if score SIZE2 LONG matches 1.. run scoreboard players remove SIZE2 LONG 1