# tee

## Goal

Practice using `tee` to send output to both the terminal and a file.

---

## Save Output and Display It

```bash
ls -l | tee file-list.txt
```

---

## Append Output

```bash
date | tee -a file-list.txt
```

---

## Save Pipeline Output

```bash
cat sample-data/app.log | grep ERROR | tee error-report.txt
```

---

## Save stdout and stderr

```bash
ls sample-data missing-file 2>&1 | tee command-output.txt
```

---

## Notes

- `tee` is useful when I want to see command output and save it at the same time.
- `tee -a` appends to a file instead of overwriting it.
- It is useful in scripts, logs, and troubleshooting.
