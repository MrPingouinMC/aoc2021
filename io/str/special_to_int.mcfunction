
scoreboard players set CHAR REG 0

data modify storage iobuf char set value "NONE"
data modify storage iobuf char set from storage iobuf data[0]
execute if data storage iobuf {"char":"("} run scoreboard players set CHAR REG 1
execute if data storage iobuf {"char":")"} run scoreboard players set CHAR REG -1
execute if data storage iobuf {"char":"["} run scoreboard players set CHAR REG 2
execute if data storage iobuf {"char":"]"} run scoreboard players set CHAR REG -2
execute if data storage iobuf {"char":"{"} run scoreboard players set CHAR REG 3
execute if data storage iobuf {"char":"}"} run scoreboard players set CHAR REG -3
execute if data storage iobuf {"char":"<"} run scoreboard players set CHAR REG 4
execute if data storage iobuf {"char":">"} run scoreboard players set CHAR REG -4

execute if data storage iobuf {"char":"."} run scoreboard players set CHAR REG 5
execute if data storage iobuf {"char":"#"} run scoreboard players set CHAR REG 6