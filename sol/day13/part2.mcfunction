
scoreboard players set PART AOC 2
scoreboard players set DAY AOC 13
#scoreboard players set DAY AOC 0

scoreboard players set YEAR AOC 2021
function aoc:core/load_input
function aoc:core/timer_start

data modify storage buf2 data set value []
data modify storage buf3 data set value []
scoreboard players set FOLD VAR 0
function aoc:io/init/input
function aoc:sol/day13/parse

#tellraw @a ["buf2", {"nbt":"data","storage":"buf2"}]
#tellraw @a ["buf3", {"nbt":"data","storage":"buf3"}]
function aoc:puf/create/new

scoreboard players set COUNT VAR 0
function aoc:io/init/buffer2
execute as @e[tag=puf] at @s run function aoc:sol/day13/init

#tellraw @a ["count", {"score":{"objective":"VAR","name":"COUNT"}}]


#tellraw @a ["to fold : ", {"nbt":"data","storage":"buf2"}]
function aoc:io/init/buffer3
execute as @e[tag=puf] at @s run function aoc:sol/day13/fold_all



kill @e[tag=builder]
summon marker 17 9 148 {Tags:[builder]}
scoreboard players set STARTX VAR 17
scoreboard players set STARTY VAR 148
execute as @e[tag=builder] at @s run fill ~ ~ ~ ~300 ~ ~10 air
function aoc:io/init/buffer2
execute as @e[tag=builder] at @s run function aoc:sol/day13/draw
kill @e[tag=builder]

scoreboard players set SOL VAR -1


function aoc:puf/create/end

function aoc:core/print_score
function aoc:core/timer_end
