#> gelay:debug > clear_all
#--------------------
# ...
#--------------------
# ...
#--------------------
#> clears all scheduled tasks and restarts all timers and counters.
#--------------------
# ...
#--------------------
# ...
#--------------------

data modify storage gelay:data tasks set value []

scoreboard players set *time gelay_data 0
scoreboard players set *current_id gelay_data 0