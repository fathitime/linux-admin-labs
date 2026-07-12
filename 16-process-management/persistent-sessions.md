# Persistent Processes and Terminal Sessions

## nohup

Run a command after terminal disconnection:

```bash
nohup sleep 600 > sleep.log 2>&1 &
```

Find the process:

```bash
pgrep -a sleep
```

View the output:

```bash
cat sleep.log
```

## screen

Start a session:

```bash
screen
```

List sessions:

```bash
screen -ls
```

Detach:

```text
Ctrl + A, then D
```

Reattach:

```bash
screen -r
```

## tmux

Create a named session:

```bash
tmux new -s lpic-lab
```

Detach:

```text
Ctrl + B, then D
```

List sessions:

```bash
tmux ls
```

Reattach:

```bash
tmux attach -t lpic-lab
```

Create a vertical split:

```text
Ctrl + B, then %
```

Create a horizontal split:

```text
Ctrl + B, then "
```

## Real-World Uses

- Keeping commands active during SSH disconnection
- Running deployment or backup tasks
- Monitoring logs in multiple panes
- Managing several shell sessions on a remote server
