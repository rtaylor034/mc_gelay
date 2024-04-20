
data merge storage gelay:var {guuid:{0:0,1:0,2:0,3:0,4:0,5:0,6:0,7:0,8:0,9:0,a:0,b:0,c:0,d:0,e:0,f:0}}
data modify storage gelay:var guuid.UUID set from entity @s UUID

execute store result score *guuid.0 gelay_var store result score *guuid.1 gelay_var run data get storage gelay:var guuid.UUID[0]
execute store result storage gelay:var guuid.0 int 1 run scoreboard players operation *guuid.0 gelay_var %= *256 gelay_const
execute store result score *guuid.2 gelay_var run scoreboard players operation *guuid.1 gelay_var /= *256 gelay_const
execute store result storage gelay:var guuid.1 int 1 run scoreboard players operation *guuid.1 gelay_var %= *256 gelay_const
execute store result score *guuid.3 gelay_var run scoreboard players operation *guuid.2 gelay_var /= *256 gelay_const
execute store result storage gelay:var guuid.2 int 1 run scoreboard players operation *guuid.2 gelay_var %= *256 gelay_const
execute store result storage gelay:var guuid.3 int 1 run scoreboard players operation *guuid.3 gelay_var /= *256 gelay_const

execute store result score *guuid.0 gelay_var store result score *guuid.1 gelay_var run data get storage gelay:var guuid.UUID[1]
execute store result storage gelay:var guuid.4 int 1 run scoreboard players operation *guuid.0 gelay_var %= *256 gelay_const
execute store result score *guuid.2 gelay_var run scoreboard players operation *guuid.1 gelay_var /= *256 gelay_const
execute store result storage gelay:var guuid.5 int 1 run scoreboard players operation *guuid.1 gelay_var %= *256 gelay_const
execute store result score *guuid.3 gelay_var run scoreboard players operation *guuid.2 gelay_var /= *256 gelay_const
execute store result storage gelay:var guuid.6 int 1 run scoreboard players operation *guuid.2 gelay_var %= *256 gelay_const
execute store result storage gelay:var guuid.7 int 1 run scoreboard players operation *guuid.3 gelay_var /= *256 gelay_const

execute store result score *guuid.0 gelay_var store result score *guuid.1 gelay_var run data get storage gelay:var guuid.UUID[2]
execute store result storage gelay:var guuid.8 int 1 run scoreboard players operation *guuid.0 gelay_var %= *256 gelay_const
execute store result score *guuid.2 gelay_var run scoreboard players operation *guuid.1 gelay_var /= *256 gelay_const
execute store result storage gelay:var guuid.9 int 1 run scoreboard players operation *guuid.1 gelay_var %= *256 gelay_const
execute store result score *guuid.3 gelay_var run scoreboard players operation *guuid.2 gelay_var /= *256 gelay_const
execute store result storage gelay:var guuid.a int 1 run scoreboard players operation *guuid.2 gelay_var %= *256 gelay_const
execute store result storage gelay:var guuid.b int 1 run scoreboard players operation *guuid.3 gelay_var /= *256 gelay_const

execute store result score *guuid.0 gelay_var store result score *guuid.1 gelay_var run data get storage gelay:var guuid.UUID[3]
execute store result storage gelay:var guuid.c int 1 run scoreboard players operation *guuid.0 gelay_var %= *256 gelay_const
execute store result score *guuid.2 gelay_var run scoreboard players operation *guuid.1 gelay_var /= *256 gelay_const
execute store result storage gelay:var guuid.d int 1 run scoreboard players operation *guuid.1 gelay_var %= *256 gelay_const
execute store result score *guuid.3 gelay_var run scoreboard players operation *guuid.2 gelay_var /= *256 gelay_const
execute store result storage gelay:var guuid.e int 1 run scoreboard players operation *guuid.2 gelay_var %= *256 gelay_const
execute store result storage gelay:var guuid.f int 1 run scoreboard players operation *guuid.3 gelay_var /= *256 gelay_const

function gelay:_/_impl/guuid/get_hexes with storage gelay:var guuid
function gelay:_/_impl/guuid/concat_uuid with storage gelay:var guuid

