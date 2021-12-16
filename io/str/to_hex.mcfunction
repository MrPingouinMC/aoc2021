scoreboard players set CHAR REG -1

data modify storage iobuf char set value "NONE"
data modify storage iobuf char set from storage iobuf data[0]
execute if data storage iobuf {"char":"0"} run scoreboard players set CHAR REG 0
execute if data storage iobuf {"char":"1"} run scoreboard players set CHAR REG 1
execute if data storage iobuf {"char":"2"} run scoreboard players set CHAR REG 2
execute if data storage iobuf {"char":"3"} run scoreboard players set CHAR REG 3
execute if data storage iobuf {"char":"4"} run scoreboard players set CHAR REG 4
execute if data storage iobuf {"char":"5"} run scoreboard players set CHAR REG 5
execute if data storage iobuf {"char":"6"} run scoreboard players set CHAR REG 6
execute if data storage iobuf {"char":"7"} run scoreboard players set CHAR REG 7
execute if data storage iobuf {"char":"8"} run scoreboard players set CHAR REG 8
execute if data storage iobuf {"char":"9"} run scoreboard players set CHAR REG 9

execute if data storage iobuf {"char":"A"} run scoreboard players set CHAR REG 10
execute if data storage iobuf {"char":"B"} run scoreboard players set CHAR REG 11
execute if data storage iobuf {"char":"C"} run scoreboard players set CHAR REG 12
execute if data storage iobuf {"char":"D"} run scoreboard players set CHAR REG 13
execute if data storage iobuf {"char":"E"} run scoreboard players set CHAR REG 14
execute if data storage iobuf {"char":"F"} run scoreboard players set CHAR REG 15

execute if data storage iobuf {"char":"a"} run scoreboard players set CHAR REG 10
execute if data storage iobuf {"char":"b"} run scoreboard players set CHAR REG 11
execute if data storage iobuf {"char":"c"} run scoreboard players set CHAR REG 12
execute if data storage iobuf {"char":"d"} run scoreboard players set CHAR REG 13
execute if data storage iobuf {"char":"e"} run scoreboard players set CHAR REG 14
execute if data storage iobuf {"char":"f"} run scoreboard players set CHAR REG 15
