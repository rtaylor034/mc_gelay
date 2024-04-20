#> gelay:api > schedule
#--------------------
# -> command: $command
# -> ticks: int
# => selector: $selector = "@s"
# => data: obj = {}
#--------------------
# <- result: TaskId
#--------------------
#> schedules <command> to run AS and AT <selector> in <ticks> ticks.
#> {gelay:api -> data} will hold <data> when <command> is executed.
#--------------------
#- <selector> takes into account the current context, hence default "@s" value.
#- >result< is the assigned TaskId, and is used when cancelling a scheduled command.
#- <ticks> cannot be zero or negative.
#--------------------
# 1 - success
# 0 - failure, <ticks> zero or negative.
#--------------------

execute unless data storage gelay:in schedule.selector run data modify storage gelay:in schedule.selector set value "@s"
execute unless data storage gelay:in schedule.data run data modify storage gelay:in schedule.data set value {}

data modify storage gelay:var schedule.add.data set from storage gelay:in schedule.data
data modify storage gelay:var schedule.add.command set from storage gelay:in schedule.command

execute store result score *schedule.time gelay_var run data get storage gelay:in schedule.ticks
execute if score *schedule.time gelay_var matches ..0 run return run function gelay:_/impl/schedule/fail
scoreboard players operation *schedule.time gelay_var += *time gelay_data
execute store result storage gelay:var schedule.add.time int 1 run scoreboard players get *schedule.time gelay_var

scoreboard players add *current_id gelay_data 1
execute store result storage gelay:var schedule.add.task_id int 1 run scoreboard players get *current_id gelay_data
data modify storage gelay:out schedule.result set from storage gelay:var schedule.add.task_id

function gelay:_/_api/guuid_list with storage gelay:in schedule

function gelay:_/impl/schedule/schedule with storage gelay:in schedule

execute if data storage gelay:out guuid_list.result[] run function gelay:_/impl/schedule/each_target

scoreboard players reset *schedule.time gelay_var
data remove storage gelay:in schedule
data remove storage gelay:var schedule

return 1