# Text Stream Filters (LPIC-1 103.2)

## Goal

Practice Linux text stream filtering commands used for viewing, modifying, sorting, counting, and verifying text data.
This topic is important for working with log files, configuration files, command outputs, and automation scripts.

---

## Standard Streams

Linux commands commonly work with three standard streams:

- `stdin` - standard input
- `stdout` - standard output
- `stderr` - standard error

Text filters process input and produce modified output.

---

## Viewing Text Files

```bash
cat sample.txt
cat -n sample.txt
less sample.txt
head sample.txt
head -n 5 sample.txt
tail sample.txt
tail -n 5 sample.txt
tail -f /var/log/syslog
```

### Notes

- `cat` displays file contents.
- `cat -n` displays line numbers.
- `less` is useful for reading large files.
- `head` shows the beginning of a file.
- `tail` shows the end of a file.
- `tail -f` follows new lines in real time, useful for logs.

---

## Inspecting Files

```bash
od sample.txt
od -c sample.txt
od -t c sample.txt
```

### Notes

- `od` displays file content in different formats.
- It can help detect hidden characters, tabs, and line-ending issues.

---

## Selecting Parts of Text

```bash
cut -f1 data.tsv
cut -d',' -f1 data.csv
cut -d',' -f1,2 data.csv
cut -c1-10 sample.txt
```

### Notes

- `cut` extracts fields or characters.
- Default delimiter is TAB.
- `-d` defines a custom delimiter.
- `-f` selects fields.
- `-c` selects characters.

---

## Sorting and Removing Duplicates

```bash
sort names.txt
sort -r names.txt
sort -n numbers.txt
sort names.txt | uniq
sort names.txt | uniq -c
sort names.txt | uniq -d
sort names.txt | uniq -u
```

### Notes

- `sort` sorts text lines.
- `sort -n` sorts numerically.
- `uniq` removes duplicate adjacent lines.
- Input should usually be sorted before using `uniq`.

---

## Counting Lines, Words, and Bytes

```bash
wc sample.txt
wc -l sample.txt
wc -w sample.txt
wc -c sample.txt
```

### Notes

- `wc` counts lines, words, and bytes.
- `wc -l` is commonly used to count lines.

---

## Joining and Splitting Files

```bash
split -l 5 sample.txt output-
split -d -l 5 sample.txt output-
cat output-* > restored.txt
paste file1.txt file2.txt
```

### Notes

- `split` divides a file into smaller parts.
- `cat output-* > restored.txt` can join split files.
- `paste` joins lines from multiple files side by side.

---

## Translating Characters

```bash
cat sample.txt | tr 'a-z' 'A-Z'
cat sample.txt | tr 'A-Z' 'a-z'
cat sample.txt | tr -d ' '
```

### Notes

- `tr` translates or deletes characters.
- It works as a filter and usually receives input from a pipe or stdin.

---

## Stream Editing with sed

```bash
sed 's/linux/Linux/' sample.txt
sed 's/linux/Linux/g' sample.txt
sed 's/ /_/g' sample.txt
```

### Notes

- `sed` is a stream editor.
- `s/old/new/` replaces the first match in each line.
- `s/old/new/g` replaces all matches in each line.

---

## Hashing Files

```bash
md5sum sample.txt
sha256sum sample.txt
sha512sum sample.txt
```

### Notes

- Hash commands create checksums for files.
- Checksums can be used to verify file integrity.
- `sha256sum` and `sha512sum` are stronger than `md5sum`.

---

## Compressed File Viewing

```bash
zcat file.gz
bzcat file.bz2
xzcat file.xz
```

### Notes

- These commands display compressed files without manually extracting them first.

---

## Practice Result

This module was practiced as part of LPIC-1 103.2: Process text streams using filters.
