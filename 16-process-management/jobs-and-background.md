# Foreground and Background Jobs

## Goal

Practice Bash job control using safe test processes.

## Start a Background Job

```bash
sleep 300 &
```

The shell displays a job number and process ID.

## View Current Jobs

```bash
jobs
jobs -l
```

- `jobs` lists jobs started from the current shell.
- `jobs -l` also displays process IDs.

## Suspend a Foreground Process

Start a process:

```bash
sleep 300
```

Suspend it with:

```text
Ctrl + Z
```

## Resume in the Background

```bash
bg
```

Or resume a specific job:

```bash
bg %1
```

## Bring a Job to the Foreground

```bash
fg %1
```

## Stop a Foreground Process

```text
Ctrl + C
```

## Notes

- `Ctrl + Z` suspends a foreground job.
- `bg` resumes a stopped job in the background.
- `fg` brings a job to the foreground.
- `%1` refers to job number 1, not process ID 1.
