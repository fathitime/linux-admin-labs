# Process and Resource Monitoring

## Process Listing

```bash
ps
ps -ef
ps aux
```

## Display Selected Fields

```bash
ps -eo pid,ppid,user,stat,%cpu,%mem,etime,cmd
```

## Sort by CPU Usage

```bash
ps -eo pid,user,%cpu,%mem,comm --sort=-%cpu | head
```

## Sort by Memory Usage

```bash
ps -eo pid,user,%cpu,%mem,comm --sort=-%mem | head
```

## Locate Processes

```bash
pgrep sleep
pgrep -a sleep
pgrep -u "$USER"
```

## Interactive Monitoring

```bash
top
```

Useful keys inside `top`:

| Key | Action |
|---|---|
| `M` | Sort by memory usage |
| `P` | Sort by CPU usage |
| `c` | Show full command |
| `k` | Send a signal |
| `q` | Quit |

## Memory Information

```bash
free -h
```

## Uptime and Load Average

```bash
uptime
nproc
```

`nproc` displays the number of available processing units.

## Repeat a Monitoring Command

```bash
watch free -h
watch -n 1 uptime
watch -n 2 "ps -eo pid,%cpu,%mem,comm --sort=-%cpu | head"
```

## Notes

Process monitoring is useful for:

- Troubleshooting high CPU usage
- Detecting memory pressure
- Finding long-running processes
- Checking whether a service or command is still running
