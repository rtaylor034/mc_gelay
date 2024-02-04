#> gelay:api > schedule
#--------------------
# -> command: $command
# -> ticks: int
# => selector: $selector = "@s"
# => data: obj = {}
#--------------------
# <- id: TaskId
#--------------------
#> schedules <command> to run AS and AT <selector> in <ticks> ticks.
#> {gelay:api -> data} will hold <data> when <command> is executed.
#--------------------
#- <selector> takes into account the current context, hence default "@s" value.
#- scheduled command is stored as a Task with >task_id<.
#- >id< is the assigned TaskId, and is used when cancelling a scheduled command.
#- <ticks> cannot be zero or negative.
#--------------------
# 1 - success
# 0 - failure, <ticks> zero or negative.
#--------------------

$data modify storage gelay:in schedule set value $(in)
execute unless data storage gelay:in schedule.selector run data modify storage gelay:in schedule.selector set value "@s"
execute unless data storage gelay:in schedule.data run data modify storage gelay:in schedule.data set value {}

data modify storage gelay:var schedule.add.data set from storage gelay:in schedule.data

execute store result score *schedule.time gelay_var run data get storage gelay:in schedule.ticks
execute if score *schedule.time gelay_var matches ..0 run return run function gelay:impl/schedule/fail
scoreboard players operation *schedule.time gelay_var += *time gelay_data
execute store result storage gelay:var schedule.add.time int 1 run scoreboard players get *schedule.time gelay_var

scoreboard players add *current_id gelay_data 1
execute store result storage gelay:var schedule.add.id int 1 run scoreboard players get *current_id gelay_data
data modify storage gelay:out schedule.id set from storage gelay:var schedule.id

function gelay:internal/api/guuid_list with storage gelay:in schedule

execute if data storage gelay:out guuid_list.result[] run function gelay:impl/schedule/each_target

scoreboard players reset *schedule.time gelay_var
data remove storage gelay:in schedule
data remove storage gelay:var schedule
