# nice and renice

## Goal

Practice starting processes with a modified priority and changing the priority of running processes.

## Check Current Niceness

```bash
nice
```

The default nice value is normally:

```text
0
```

## Start a Process with Lower Priority

```bash
nice -n 10 sleep 300 &
```

Check the process:

```bash
ps -o pid,ppid,pri,ni,stat,cmd -C sleep
```

## Default nice Behavior

Running `nice` without `-n` normally increases the niceness by 10:

```bash
nice sleep 300 &
```

## Change a Running Process Priority

First, locate the process:

```bash
pgrep -a sleep
```

Then change its nice value:

```bash
renice -n 15 -p PROCESS_ID
```

Check the result:

```bash
ps -o pid,pri,ni,stat,cmd -p PROCESS_ID
```

## Increase Process Priority

A negative nice value gives a process higher CPU priority and generally requires root privileges:

```bash
sudo renice -n -5 -p PROCESS_ID
```

## Important Rule

- Increasing the nice value lowers CPU priority.
- Decreasing the nice value raises CPU priority.
- Values range from `-20` to `19`.
- Negative values normally require administrative privileges.
