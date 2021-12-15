gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doMobSpawning false
#gamerule logAdminCommands false

gamerule maxCommandChainLength 2147483647
gamerule maxCommandChainLength 140000000

#Lol no, not needed this year
#forceload add 0 0

#Used for internal, states memory
scoreboard objectives add REG dummy

#Used for the pufferfish array
scoreboard objectives add PUF dummy

#Used for the long calculation (actually an implementation closer to big int)
scoreboard objectives add LONG dummy
scoreboard players set D LONG 1000

#Used for the sort utils
scoreboard objectives add SORT dummy

#Used for the sort utils
scoreboard objectives add MARKER dummy

#Used for general solving
scoreboard objectives add VAR dummy
scoreboard objectives add CONST dummy

#Use for data on the problem (day, year, part, ...)
scoreboard objectives add AOC dummy


scoreboard players set -4 CONST -4
scoreboard players set -1 CONST -1
scoreboard players set 1 CONST 1
scoreboard players set 2 CONST 2
scoreboard players set 3 CONST 3
scoreboard players set 4 CONST 4
scoreboard players set 5 CONST 5
scoreboard players set 7 CONST 7
scoreboard players set 8 CONST 8
scoreboard players set 10 CONST 10
scoreboard players set 11 CONST 11
scoreboard players set 13 CONST 13
scoreboard players set 16 CONST 16
scoreboard players set 17 CONST 17
scoreboard players set 31 CONST 31
scoreboard players set 32 CONST 32
scoreboard players set 64 CONST 64
scoreboard players set 100 CONST 100
scoreboard players set 250 CONST 250
scoreboard players set 256 CONST 256
scoreboard players set 1000 CONST 1000
scoreboard players set 10000 CONST 10000

scoreboard players set BINT CONST 1000

scoreboard players set DAY AOC 1000
scoreboard players set YEAR AOC 1000

function aoc:init_inputs

