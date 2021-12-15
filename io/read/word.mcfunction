
scoreboard players set LEN REG 0
data modify storage iobuf word set value []

function aoc:io/read/priv/word_loop

data modify storage buf data append value {"word":0}
data modify storage buf data[-1].word set from storage iobuf word
