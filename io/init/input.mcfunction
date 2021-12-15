#Convert values from `input data` storage to main `buf data` storage

#Initialize input buffer size to a score
execute store result score INPUT_SIZE REG run data get storage input data

#Initializa the main buffer
data modify storage buf data set value []
data modify storage iobuf data set from storage input data[0]
data remove storage input data[0]
execute store result score IOBUFFER_SIZE REG run data get storage iobuf data

#access each element with `input data[0]`
#Call aoc:io/next_input to get to the next element