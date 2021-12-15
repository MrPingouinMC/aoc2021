

scoreboard players set COUNT VAR 0

function aoc:io/init/buffer2
function aoc:sol/day12/init_graph
function aoc:io/init/buffer2
function aoc:sol/day12/link

scoreboard players operation V PUF = START_CONST VAR
function aoc:puf/get
data modify storage buf stack set value []
data modify storage buf stack append from storage puf data.link
#tellraw @a ["start ", {"nbt":"stack","storage":"buf"}]
data modify storage buf path set value [-1]
execute store result storage buf path[-1] int 1 run scoreboard players get START_CONST VAR
function aoc:sol/day12/bfs