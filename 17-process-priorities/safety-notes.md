# Process Priority Safety Notes

## Safe Practice Rules

1. Practice only inside a personal Linux virtual machine.
2. Use harmless test processes created specifically for the lab.
3. Do not renice important system services.
4. Do not give test processes negative nice values on production systems.
5. Confirm the process ID and command before using `renice`.
6. Stop all test processes after completing the exercise.
7. Use time-limited workloads to prevent continuous CPU usage.

## Safe Cleanup

Locate test processes:

```bash
pgrep -a timeout
pgrep -a bash
```

Stop only the confirmed lab processes:

```bash
kill PROCESS_ID
```

Use `SIGKILL` only if normal termination fails:

```bash
kill -KILL PROCESS_ID
```
