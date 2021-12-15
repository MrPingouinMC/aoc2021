#Convert values from `input data` storage to main `buf data` storage

#Initialize input buffer size to a score
execute store result score IOBUFFER_SIZE REG run data get storage iobuff data


#access each element with `input data[0]`
#Call aoc:io/next_input to get to the next element