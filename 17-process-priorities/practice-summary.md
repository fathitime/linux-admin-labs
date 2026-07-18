# Practice Summary

## LPIC-1 Topic

103.6 Modify process execution priorities

## What I Studied

- Default Linux nice values
- Nice value range from `-20` to `19`
- Relationship between niceness and CPU scheduling priority
- Starting processes with `nice`
- Modifying running processes with `renice`
- Viewing priority values with `ps`
- Monitoring and modifying priorities with `top`
- Privilege requirements for negative nice values

## Hands-On Tasks

- Started test processes with default and custom nice values
- Compared `NI`, `PRI`, and CPU usage
- Changed the nice value of a running process
- Verified priority changes with `ps`
- Observed process priority using `top`

## Real-World Use Cases

- Reducing the impact of backup jobs
- Lowering priority for batch-processing tasks
- Preventing maintenance scripts from affecting production applications
- Prioritizing critical workloads under controlled conditions
- Troubleshooting CPU contention
