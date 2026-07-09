# Safety Notes for File Management Commands

## Goal

Document safe habits when practicing Linux file management commands.

---

## Safe Practice Rules

1. Practice inside a dedicated lab directory.
2. Use `pwd` before running destructive commands.
3. Use `ls` to preview wildcard matches before using `rm`.
4. Avoid running commands as root unless required.
5. Avoid using absolute system paths for practice.
6. Use virtual machines for risky experiments.
7. Test `find` commands with `-print` before using `-delete`.

---

## Commands That Require Extra Care

- `rm`
- `rm -r`
- `rm -f`
- `find ... -delete`
- `find ... -exec rm`
- `dd`
- Disk and partition commands

---

## Good Habit

Before deleting files, run:

```bash
pwd
ls
find . -name "*.tmp" -print
