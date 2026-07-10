# Standard IO Redirection

## Goal

Practice redirecting standard input, standard output, and standard error.

---

## Standard Streams

| Stream | Descriptor | Description |
|---|---:|---|
| stdin | 0 | Input to a command |
| stdout | 1 | Normal output |
| stderr | 2 | Error output |

---

## Redirect stdout

Overwrite file:

```bash
ls > output.txt
```

Append to file:

```bash
ls >> output.txt
```

---

## Redirect stderr

Overwrite error file:

```bash
ls missing-file 2> errors.txt
```

Append error output:

```bash
ls another-missing-file 2>> errors.txt
```

---

## Redirect stdout and stderr Separately

```bash
ls sample-data missing-file > output.txt 2> errors.txt
```

---

## Redirect stdout and stderr Together

```bash
ls sample-data missing-file &> all-output.txt
```

Append both stdout and stderr:

```bash
ls sample-data missing-file &>> all-output.txt
```

---

## Redirect stderr to stdout

```bash
ls sample-data missing-file > combined.txt 2>&1
```

### Important Note

Order matters:

```bash
command > file 2>&1
```

This sends stdout to `file`, then sends stderr to the same destination as stdout.

---

## Redirect stdin

```bash
tr ',' '|' < sample-data/users.csv
```

---

## Send Output to /dev/null

```bash
ls sample-data missing-file > output.txt 2>/dev/null
```

### Notes

- `/dev/null` discards unwanted output.
- This is useful when errors are expected and not important.
