
function aoc:puf/get

execute if data storage puf data.count run data modify storage sort arr append from storage puf data.count

scoreboard players add V PUF 1
execute if score V PUF matches ..70 run function aoc:sol/day14/cumulate2