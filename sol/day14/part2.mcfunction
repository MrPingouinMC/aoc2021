
scoreboard players set PART AOC 2
scoreboard players set DAY AOC 14
#scoreboard players set DAY AOC 0

scoreboard players set YEAR AOC 2021
function aoc:core/load_input
function aoc:core/timer_start
function aoc:io/init/input
function aoc:sol/day14/parse

function aoc:puf/create/new

data modify storage buf2 data set from storage buf data[0].word
data remove storage buf data[0]
data modify storage buf3 data set value []
function aoc:io/init/buffer
execute as @e[tag=puf] at @s run function aoc:sol/day14/init2


data modify storage iobuf data[0] set from storage buf2 data[0]
function aoc:io/str/char_to_int
scoreboard players operation FIRST VAR = CHAR REG

function aoc:io/init/buffer2
scoreboard players remove BUFFER2_SIZE REG 1
execute as @e[tag=puf] at @s run function aoc:sol/day14/init3

scoreboard players set STEP VAR 39
execute as @e[tag=puf] at @s run function aoc:sol/day14/conv

scoreboard players operation V PUF = FIRST VAR
data modify storage puf data set value {count:[1]}
execute as @e[tag=puf] at @s run function aoc:puf/set


function aoc:io/init/buffer3
execute as @e[tag=puf] at @s run function aoc:sol/day14/cumulate


scoreboard players set V PUF 0
data modify storage sort arr set value []
execute as @e[tag=puf] at @s run function aoc:sol/day14/cumulate2

function aoc:sort/quick_sort_long

#tellraw @a ["sorted  ", {"nbt":"arr","storage":"sort"}]



data modify storage long data set from storage sort arr[-1]
data modify storage long add set from storage sort arr[0]

function aoc:long/sub

function aoc:puf/create/end

function aoc:core/print_score_long
function aoc:core/timer_end




#AB => C :    AC + CB

