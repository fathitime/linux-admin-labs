# Archiving and Compression

## Goal

Practice Linux archiving and compression tools.

---

## gzip and gunzip

```bash
gzip documents/report.txt
gunzip documents/report.txt.gz
```

Keep original file:

```bash
gzip -k documents/report.txt
```

---

## bzip2 and bunzip2

```bash
bzip2 documents/notes.txt
bunzip2 documents/notes.txt.bz2
```

---

## xz and unxz

```bash
xz documents/tasks.md
unxz documents/tasks.md.xz
```

---

## tar Archives

Create a tar archive:

```bash
tar -cf archives/documents.tar documents/
```

Extract a tar archive:

```bash
tar -xf archives/documents.tar
```

Create a gzip-compressed tar archive:

```bash
tar -czf archives/documents.tar.gz documents/
```

Extract a gzip-compressed tar archive:

```bash
tar -xzf archives/documents.tar.gz
```

---

## cpio Archive

Create archive:

```bash
find documents -type f | cpio -o > archives/documents.cpio
```

Extract archive:

```bash
mkdir cpio-extract
cd cpio-extract
cpio -id < ../archives/documents.cpio
```

---

## Notes

- Compression reduces file size.
- Archiving combines multiple files into one file.
- `tar` is commonly used for backups and transfers.
- `cpio` usually receives file lists from commands such as `find`.
