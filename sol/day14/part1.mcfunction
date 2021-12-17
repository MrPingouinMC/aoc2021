
scoreboard players set PART AOC 1
scoreboard players set DAY AOC 14
#scoreboard players set DAY AOC 0

scoreboard players set YEAR AOC 2021
function aoc:core/load_input
function aoc:core/timer_start
function aoc:io/init/input
function aoc:sol/day14/parse

#tellraw @a ["buf", {"nbt":"data","storage":"buf"}]

data modify storage buf2 data set from storage buf data[0].word
data remove storage buf data[0]
data modify storage buf3 data set value []
function aoc:io/init/buffer
function aoc:sol/day14/init

#tellraw @a ["buf2", {"nbt":"data","storage":"buf2"}]
#tellraw @a ["buf3", {"nbt":"data","storage":"buf3"}]

scoreboard players set STEP VAR 10
function aoc:sol/day14/convolve

data modify storage buf3 data set value []
function aoc:io/init/buffer2
function aoc:sol/day14/count

#tellraw @a ["buf3", {"nbt":"data","storage":"buf3"}]

scoreboard players set MIN VAR 100000
scoreboard players set MAX VAR -1
function aoc:io/init/buffer3
function aoc:sol/day14/minmax

scoreboard players operation SOL VAR = MAX VAR
scoreboard players operation SOL VAR -= MIN VAR

function aoc:puf/create/end

function aoc:core/print_score
function aoc:core/timer_end



