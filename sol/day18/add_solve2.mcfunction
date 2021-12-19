
data modify storage buf data set from storage buf3 data
data modify storage buf4 data set from storage buf2 data[0]

function aoc:sol/day18/add
function aoc:sol/day18/reduce

data modify storage buf stack set value []
function aoc:io/read/next/buffer
function aoc:io/init/buffer
function aoc:sol/day18/magnitude

scoreboard players operation MAG VAR > R VAR




data modify storage buf4 data set from storage buf3 data
data modify storage buf data set from storage buf2 data[0]

function aoc:sol/day18/add
function aoc:sol/day18/reduce

data modify storage buf stack set value []
function aoc:io/read/next/buffer
function aoc:io/init/buffer
function aoc:sol/day18/magnitude


scoreboard players operation MAG VAR > R VAR

function aoc:io/read/shift/buffer2
execute if score CONTINUE REG matches 1 run function aoc:sol/day18/add_solve2
