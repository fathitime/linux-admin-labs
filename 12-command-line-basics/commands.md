# Command Line Basics (LPIC-1 103.1)

## Goal

Learn how to interact with Bash shell, environment variables, command history, and system commands.

---

## Shell Basics

```bash
echo $SHELL
readlink /bin/sh
type cd
type ls
type ping
```

### Notes
- Bash is the most common Linux shell.
- Commands can be built-in or external binaries.
- `type` shows where a command comes from.

---

## Navigation Commands

```bash
pwd
cd
cd ~
cd $HOME
cd ..
```

### Notes
- `pwd` shows current directory.
- `~` is home directory.
- `..` means parent directory.

---

## System Information

```bash
uname -a
uname -r
uname -m
```

### Notes
- `uname` shows system/kernel information.

---

## Help System

```bash
man ls
man man
man 5 passwd
```

### Notes
- `man` shows manual pages.
- Section 5 is configuration files.

---

## Quoting & Special Characters

```bash
echo 2 \* 3 = 6
echo -e "hello\nworld"
echo "This is a long \
command split into lines"
```

### Notes
- `\` is used for escaping.
- `\n` creates new line.
- `\` can split commands into multiple lines.

---

## Environment Variables

```bash
echo $USER
echo $HOME
echo $PATH
echo $PWD
echo $SHELL
```

### Custom Variables

```bash
MYMOOD=happy
echo $MYMOOD

export MYMOOD
unset MYMOOD
```

### Notes
- Variables store system/session data.
- `export` makes variable available to child processes.

---

## PATH & Command Location

```bash
which ls
type ls
whereis ls
echo $PATH
```

### Notes
- PATH is where Linux searches for commands.
- `which` shows exact binary location.

---

## Command History

```bash
history
echo $HISTFILE
```

### Shortcuts

- ↑ / ↓ → navigate history
- `Ctrl + R` → search history
- `!!` → repeat last command
- `!10` → run command number 10

---

## Shell Exit

```bash
exit
```

or:

```bash
Ctrl + D
```

---

## Practice Result

This module was practiced as part of LPIC-1 103.1 (Work on the command line).
