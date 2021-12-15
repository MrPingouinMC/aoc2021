
scoreboard players set PART AOC 1
scoreboard players set DAY AOC 6
#scoreboard players set DAY AOC 0

scoreboard players set YEAR AOC 2021
function aoc:core/load_input
function aoc:core/timer_start

function aoc:puf/create/new

function aoc:io/init/input
function aoc:sol/day6/parse


scoreboard players set SUM VAR 0
scoreboard players set DAY VAR 18
data modify storage buf stack set value []

function aoc:io/init/buffer
function aoc:sol/day6/populate_stack

#tellraw @a ["stack ", {"nbt":"stack","storage":"buf"}]

execute as @e[tag=puf] at @s run function aoc:sol/day6/dp

scoreboard players operation SOL VAR = SUM VAR

function aoc:core/print_score
function aoc:core/timer_end
