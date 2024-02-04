#> gelay:internal/api > guuid_list
#--------------------
# DIRECT -> selector: $selector
#--------------------
# <- result: $guuid[]
#--------------------
#> gets all guuids of <selector>
#--------------------
# ...
#--------------------
# ...
#--------------------
# a modified version of gssen:api/meta/guuid (Gssentials)
#--------------------

data modify storage gelay:out guuid_list.result set value []
$execute as $(selector) run function gelay:internal/impl/guuid/guuid

scoreboard players reset *guuid.0 gelay_var
scoreboard players reset *guuid.1 gelay_var
scoreboard players reset *guuid.2 gelay_var
scoreboard players reset *guuid.3 gelay_var
data remove storage gelay:var guuid