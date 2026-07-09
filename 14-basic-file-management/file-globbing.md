# File Globbing and Wildcards

## Goal

Practice shell wildcard patterns for matching files and directories.

---

## Common Wildcards

| Pattern | Meaning |
|---|---|
| `*` | Matches any string |
| `?` | Matches any single character |
| `[abc]` | Matches one character: a, b, or c |
| `[a-z]` | Matches a range of characters |
| `[!x]` | Matches anything except x |

---

## Examples

```bash
ls *.txt
ls *.log
ls file?.tmp
ls [a-z]*.txt
ls report.*
```

---

## Copy Using Wildcards

```bash
cp documents/*.txt backups/
cp logs/*.log backups/
```

---

## Safety Note

Be careful when combining wildcards with destructive commands such as `rm`.

Before deleting, always test the match with `ls`:

```bash
ls *.tmp
```

Then remove only if the result is correct:

```bash
rm *.tmp
```
