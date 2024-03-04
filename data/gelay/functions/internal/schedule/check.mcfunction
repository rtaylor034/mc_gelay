#> gelay:internal/schedule/check
#--------------------
# impl/schedule/add
#--------------------

scoreboard players add *time gelay_data 1
execute store result storage gelay:var check.time int 1 run scoreboard players get *time gelay_data
scoreboard players remove *time gelay_data 1

data modify storage gelay:var check.jobs set value []
function gelay:internal/schedule/check.1 with storage gelay:var check

execute if data storage gelay:var check.jobs[] run function gelay:internal/schedule/run with storage gelay:var check.jobs[0]

data remove storage gelay:api data
data remove storage gelay:var check