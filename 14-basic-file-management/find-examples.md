# Finding Files with find

## Goal

Practice using `find` to locate files by name, type, size, and time.

---

## Find by Name

```bash
find . -name "*.txt"
find . -iname "*.TXT"
find . -name "*.log"
```

---

## Find by Type

```bash
find . -type f
find . -type d
```

### Notes

- `-type f` finds regular files.
- `-type d` finds directories.

---

## Find by Size

```bash
find . -size 0
find . -size +1k
find . -size -10M
```

---

## Find by Time

```bash
find . -mtime -1
find . -mtime +7
find . -mmin -60
```

### Notes

- `-mtime -1` finds files modified within the last day.
- `-mtime +7` finds files modified more than 7 days ago.
- `-mmin -60` finds files modified within the last 60 minutes.

---

## Find and Execute Actions

Preview files first:

```bash
find . -name "*.tmp" -print
```

Then remove only inside the lab directory:

```bash
find . -name "*.tmp" -delete
```

---

## Safe Practice Rule

Before using `-delete` or `-exec rm`, always run the same command with `-print` first.
