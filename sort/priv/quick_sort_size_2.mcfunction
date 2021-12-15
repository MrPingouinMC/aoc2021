execute store result score A SORT run data get storage sort arr[0]
execute store result score B SORT run data get storage sort arr[1]

execute if score A SORT > B SORT run data modify storage sort arr append from storage sort arr[0]
execute if score A SORT > B SORT run data remove storage sort arr[0]