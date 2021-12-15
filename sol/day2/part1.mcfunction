
scoreboard players set PART AOC 1
#scoreboard players set DAY AOC 0
scoreboard players set DAY AOC 2
scoreboard players set YEAR AOC 2021
function aoc:core/load_input
function aoc:core/timer_start


function aoc:io/init/input
function aoc:sol/day2/parse

scoreboard players set X VAR 0
scoreboard players set Y VAR 0

function aoc:io/init/buffer
function aoc:sol/day2/solve1

scoreboard players operation SOL VAR = X VAR
scoreboard players operation SOL VAR *= Y VAR

function aoc:core/print_score
function aoc:core/timer_end
