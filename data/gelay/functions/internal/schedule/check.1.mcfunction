#> gelay:internal/schedule/check.1

$data modify storage gelay:var check.jobs append from storage gelay:data tasks[{time:$(time)}]
$data remove storage gelay:data tasks[{time:$(time)}]