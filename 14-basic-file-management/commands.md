# Basic File Management Commands

## Goal

Practice core Linux commands for managing files and directories.

---

## Listing Files

```bash
ls
ls -l
ls -la
ls -ltrh
ls documents/
```

### Notes

- `ls` lists files and directories.
- `ls -l` shows long format.
- `ls -a` shows hidden files.
- `ls -ltrh` sorts by modification time and shows human-readable sizes.

---

## Creating Files and Directories

```bash
touch new-file.txt
mkdir new-directory
mkdir -p parent/child/grandchild
```

### Notes

- `touch` creates an empty file or updates modification time.
- `mkdir` creates directories.
- `mkdir -p` creates parent directories if needed.

---

## Copying Files and Directories

```bash
cp documents/report.txt backups/report-copy.txt
cp documents/*.txt backups/
cp -r projects/project-a backups/
```

### Notes

- `cp` copies files.
- `cp -r` copies directories recursively.
- Wildcards can be used to copy multiple files.

---

## Moving and Renaming

```bash
mv documents/todo.md documents/tasks.md
mv temp/file1.tmp backups/
```

### Notes

- `mv` moves or renames files and directories.

---

## Removing Files and Directories

```bash
rm temp/file2.tmp
rmdir empty-directory
rm -r old-directory
```

### Safety Notes

- `rm` removes files.
- `rmdir` removes only empty directories.
- `rm -r` removes directories recursively.
- Always practice destructive commands inside a lab directory.

---

## Checking File Types

```bash
file documents/report.txt
file /bin/bash
file logs/app.log
```

### Notes

- `file` detects the type of a file based on its content.

---

## Updating File Timestamps

```bash
touch documents/report.txt
touch -d "yesterday 10:00" documents/notes.txt
touch -t 202601011200 documents/tasks.md
```

### Notes

- `touch` can update file timestamps.
- `-d` accepts human-readable dates.
- `-t` accepts timestamp format.
