#> gelay:api > cancel
#--------------------
# -> task_id: TaskId
#--------------------
# ...
#--------------------
#> cancels a task with <task_id> if it exists..
#--------------------
# ...
#--------------------
# 1 - success.
# 0 - no task with <task_id> exists (likely was already executed).
#--------------------

$data modify storage gelay:in cancel set value $(in)

return run function gelay:impl/cancel/do with storage gelay:in cancel
