# Process Execution Priorities (LPIC-1 103.6)

## Goal

Practice managing Linux process execution priorities using `nice`, `renice`, `ps`, and `top`.

This module focuses on understanding process niceness, starting commands with a modified priority, changing the priority of running processes, and monitoring priority values.

## Key Concepts

- Linux nice values range from `-20` to `19`.
- A lower nice value means a higher CPU scheduling priority.
- A higher nice value means the process gives more CPU time to other processes.
- The default nice value is normally `0`.
- Regular users can usually lower the priority of their own processes.
- Increasing process priority generally requires root privileges.

## Skills Practiced

- Checking the current nice value
- Starting a process with a custom nice value
- Viewing `NI` and `PRI` values with `ps`
- Changing the priority of a running process with `renice`
- Monitoring and renicing processes with `top`
- Comparing default-priority and lower-priority test processes

## Files in This Module

| File | Description |
|---|---|
| `priority-lab.sh` | Starts safe, time-limited test processes with different nice values |
| `nice-and-renice.md` | Examples for starting and modifying process priorities |
| `monitoring-priorities.md` | Monitoring priorities with `ps` and `top` |
| `safety-notes.md` | Safe practice rules |
| `practice-summary.md` | Summary and real-world use cases |

## Practice Status

Studied — hands-on lab pending.

After successfully running the lab, update this to:

> Practiced successfully in an Ubuntu or Fedora virtual machine.
