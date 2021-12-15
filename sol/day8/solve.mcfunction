
data modify storage buf data set value []
data modify storage buf3 data set from storage buf2 data[0] 
function aoc:io/init/buffer3
function aoc:sol/day8/convert_all



scoreboard players set N0 VAR -1
scoreboard players set N1 VAR -1
scoreboard players set N2 VAR -1
scoreboard players set N3 VAR -1
scoreboard players set N4 VAR -1
scoreboard players set N5 VAR -1
scoreboard players set N6 VAR -1
scoreboard players set N7 VAR -1
scoreboard players set N8 VAR -1
scoreboard players set N9 VAR -1

function aoc:io/init/buffer
function aoc:sol/day8/first_pass

scoreboard players operation F1 VAR = N4 VAR
scoreboard players operation F1 VAR /= N1 VAR

scoreboard players operation F2 VAR = N1 VAR


function aoc:io/init/buffer
function aoc:sol/day8/second_pass


function aoc:io/read/next/buffer2

scoreboard players set MULT VAR 1000
data modify storage buf3 data set from storage buf2 data[0]
function aoc:io/init/buffer3
function aoc:sol/day8/make_sum




function aoc:io/read/next/buffer2
execute if score CONTINUE REG matches 1 run function aoc:sol/day8/solve