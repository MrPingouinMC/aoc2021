
scoreboard players set PART AOC 1
scoreboard players set DAY AOC 7
#scoreboard players set DAY AOC 0

scoreboard players set YEAR AOC 2021
function aoc:core/load_input
function aoc:core/timer_start

function aoc:io/init/input
function aoc:sol/day7/parse

scoreboard players set MIN VAR 10000000
scoreboard players set MIN_ALIGN VAR -1
scoreboard players set LAST VAR 10000000

scoreboard players set ALIGN VAR 500
scoreboard players set OFFSET VAR 100
function aoc:sol/day7/perform


scoreboard players operation SOL VAR = MIN VAR

function aoc:core/print_score
function aoc:core/timer_end
