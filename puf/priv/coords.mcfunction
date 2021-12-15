
#transform a V PUF score to a set of coordinates in the puf array.


scoreboard players operation W PUF = V PUF

scoreboard players operation X PUF = W PUF
scoreboard players operation X PUF %= SIZEX PUF

scoreboard players operation W PUF -= X PUF
scoreboard players operation W PUF /= SIZEX PUF


scoreboard players operation Z PUF = W PUF
scoreboard players operation Z PUF %= SIZEZ PUF

scoreboard players operation W PUF -= Z PUF
scoreboard players operation W PUF /= SIZEZ PUF


scoreboard players operation Y PUF = W PUF
scoreboard players operation Y PUF %= SIZEY PUF

scoreboard players operation W PUF -= Y PUF
scoreboard players operation W PUF /= SIZEY PUF

scoreboard players operation X PUF += 16 CONST
scoreboard players operation Z PUF += 16 CONST