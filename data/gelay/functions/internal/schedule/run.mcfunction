#> gelay:internal/schedule/run
#--------------------
# ./check
#--------------------

data modify storage gelay:api data set from storage gelay:var check.jobs[0].data

$execute as $(target) at @s run $(command)

data remove storage gelay:var check.jobs[0]
execute if data storage gelay:var check.jobs[] run function gelay:internal/schedule/run with storage gelay:var check.jobs[0]