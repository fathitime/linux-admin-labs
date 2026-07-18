# Monitoring Process Priorities

## View Priority with ps

```bash
ps -l
```

Important columns:

| Column | Meaning |
|---|---|
| `PID` | Process ID |
| `PPID` | Parent process ID |
| `PRI` | Scheduler priority |
| `NI` | Nice value |
| `STAT` | Process state |

## Custom ps Output

```bash
ps -eo pid,ppid,user,pri,ni,stat,%cpu,%mem,etime,comm
```

## Sort by Nice Value

```bash
ps -eo pid,user,pri,ni,%cpu,comm --sort=ni
```

## Sort by CPU Usage

```bash
ps -eo pid,user,pri,ni,%cpu,comm --sort=-%cpu | head
```

## Monitor with top

```bash
top
```

Useful columns:

- `PR`: process scheduling priority
- `NI`: nice value
- `%CPU`: CPU usage
- `%MEM`: memory usage

Useful keys inside `top`:

| Key | Action |
|---|---|
| `r` | Change the nice value of a process |
| `P` | Sort by CPU usage |
| `M` | Sort by memory usage |
| `k` | Send a signal to a process |
| `q` | Quit |

## Renice from top

1. Press `r`.
2. Enter the process ID.
3. Enter the new nice value.
4. Confirm the updated `NI` column.

Increasing priority to a negative nice value may require running `top` with administrative privileges.
