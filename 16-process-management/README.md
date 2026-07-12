# Process Management (LPIC-1 103.5)

## Goal

Practice Linux process and job management as part of LPIC-1 103.5.

This module focuses on running foreground and background jobs, monitoring system resources, locating processes, sending signals, and keeping terminal sessions active after disconnection.

## Skills Practiced

- Running processes in the foreground and background
- Suspending and resuming jobs
- Managing jobs with `jobs`, `bg`, and `fg`
- Monitoring processes with `ps` and `top`
- Monitoring memory and load with `free` and `uptime`
- Finding processes with `pgrep`
- Sending signals with `kill`, `killall`, and `pkill`
- Repeating monitoring commands with `watch`
- Running persistent commands with `nohup`
- Managing persistent terminal sessions with `screen` and `tmux`

## Files in This Module

| File | Description |
|---|---|
| `lab-setup.sh` | Starts safe test processes for job-control practice |
| `process-report.sh` | Generates a basic system and process report |
| `jobs-and-background.md` | Foreground and background job examples |
| `process-monitoring.md` | Process and resource monitoring commands |
| `signals-and-termination.md` | Signal handling and safe process termination |
| `persistent-sessions.md` | `nohup`, `screen`, and `tmux` examples |
| `practice-summary.md` | Skills and real-world use cases |

## Safety

All termination commands in this module are practiced only against test processes created inside the lab.

System processes and production services must not be terminated without understanding their purpose and dependencies.

## Practice Result

This module was studied and documented as part of LPIC-1 103.5: Create, monitor, and kill processes.
