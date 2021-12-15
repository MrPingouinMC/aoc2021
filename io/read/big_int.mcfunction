
data modify storage iobuf bint set value []

function aoc:io/read/priv/bint_loop

data modify storage buf data append value {"bint":[]}
data modify storage buf data[-1].bint set from storage iobuf bint
