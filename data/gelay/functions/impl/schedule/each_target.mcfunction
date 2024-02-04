#> gelay:impl/schedule/each_target
#--------------------
# @api
#--------------------

data modify storage gelay:var schedule.add.target set from storage gelay:out guuid_list.result[-1]
data modify storage gelay:data tasks append from storage gelay:var schedule.add

data remove storage gelay:out guuid_list.result[-1]
execute if data storage gelay:out guuid_list.result[] run function gelay:impl/schedule/each_target