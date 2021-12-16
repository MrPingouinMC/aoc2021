
execute store result score G VAR run data get storage buf2 data[0]

data modify storage buf3 data append from storage buf2 data[1]
data modify storage buf3 data append from storage buf2 data[2]
data modify storage buf3 data append from storage buf2 data[3]
data modify storage buf3 data append from storage buf2 data[4]

function aoc:io/read/next/buffer2
function aoc:io/read/next/buffer2
function aoc:io/read/next/buffer2
function aoc:io/read/next/buffer2
function aoc:io/read/next/buffer2
scoreboard players add READ VAR 5