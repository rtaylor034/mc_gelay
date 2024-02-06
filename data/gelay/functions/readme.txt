GENERAL USE INFO

- must load after all dependent packs

-- gelay:data --
{
    tasks[]: Task
}

Task: {
    command: $command
    target: $guuid
    data: obj
    time: int
    id: TaskId
}

TaskId: int