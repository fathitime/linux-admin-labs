# Process Signals and Termination

## Goal

Practice locating and terminating safe test processes.

## Common Signals

| Number | Name | Purpose |
|---:|---|---|
| 1 | SIGHUP | Terminal disconnected or configuration reload request |
| 15 | SIGTERM | Graceful termination request |
| 9 | SIGKILL | Immediate forced termination |
| 18 | SIGCONT | Continue a stopped process |
| 19 | SIGSTOP | Stop a process |

## List Available Signals

```bash
kill -l
```

## Find a Process

```bash
pgrep -a sleep
```

## Request Graceful Termination

```bash
kill PROCESS_ID
```

Equivalent explicit form:

```bash
kill -TERM PROCESS_ID
```

## Force Termination

Use only when graceful termination fails:

```bash
kill -KILL PROCESS_ID
```

## Terminate by Process Name

```bash
killall sleep
```

## Terminate by Pattern

```bash
pkill sleep
```

Preview matching processes first:

```bash
pgrep -a sleep
```

## Safe Workflow

1. Find the process with `pgrep`, `ps`, or `top`.
2. Confirm the process ID and command.
3. Send `SIGTERM`.
4. Check whether the process stopped.
5. Use `SIGKILL` only when necessary.

## Safety Warning

`killall` and `pkill` may affect multiple processes.

Never use them on shared or production systems without first confirming all matches.
