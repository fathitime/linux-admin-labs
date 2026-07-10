# Pipes

## Goal

Practice using pipes to connect the output of one command to the input of another command.

---

## Basic Pipe

```bash
cat sample-data/users.csv | cut -d',' -f2
```

---

## Count Operating System Usage

```bash
cat sample-data/users.csv | cut -d',' -f2 | sort | uniq -c
```

---

## Sort by Most Used

```bash
cat sample-data/users.csv | cut -d',' -f2 | sort | uniq -c | sort -nr
```

---

## Analyze Log File

Show only errors:

```bash
cat sample-data/app.log | grep ERROR
```

Count errors:

```bash
cat sample-data/app.log | grep ERROR | wc -l
```

Show log levels:

```bash
cat sample-data/app.log | cut -d' ' -f1 | sort | uniq -c
```

---

## Notes

- Pipes connect small Linux tools together.
- This is useful for log analysis and automation.
- Each command performs one task and passes output to the next command.
