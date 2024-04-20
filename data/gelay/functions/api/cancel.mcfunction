#> gelay:api > cancel
#--------------------
# -> task_id: TaskId
#--------------------
# ...
#--------------------
#> cancels a task with <task_id> if it exists.
#--------------------
# ...
#--------------------
# 1 - success.
# 0 - no task with <task_id> exists (likely was already executed).
#--------------------

return run function gelay:_/impl/cancel/do with storage gelay:in cancel
