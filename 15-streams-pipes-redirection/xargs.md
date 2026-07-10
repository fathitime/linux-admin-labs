# xargs

## Goal

Practice using `xargs` to convert standard input into command arguments.

---

## Basic Example

```bash
ls | xargs echo
```

---

## Use xargs with Custom Text

```bash
cat sample-data/users.csv | xargs echo
```

---

## Use One Line at a Time

```bash
cat sample-data/users.csv | xargs -L 1 echo "User record:"
```

---

## Use Placeholder with -I

```bash
cat sample-data/users.csv | xargs -I DATA echo "Processing: DATA"
```

---

## Practical Example: Create Files from Input

```bash
echo "alpha beta gamma" | xargs -n 1 touch
```

Then check:

```bash
ls alpha beta gamma
```

---

## Safety Note

Be careful when combining `xargs` with destructive commands such as `rm`.

Always preview first:

```bash
find . -name "*.tmp" -print
```

Only delete after confirming the output.
