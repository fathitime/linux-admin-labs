# Here-Documents

## Goal

Practice here-documents for sending multi-line input to commands.

---

## Basic Here-Document

```bash
cat << EOF
This is line one.
This is line two.
This is line three.
EOF
```

---

## Use Here-Document with tr

```bash
tr ' ' '_' << EOF
Linux administration practice
Streams pipes and redirects
LPIC 1 study lab
EOF
```

---

## Create a File with Here-Document

```bash
cat > message.txt << EOF
This file was created using a here-document.
It is useful for scripts and automation.
EOF
```

---

## Notes

- Here-documents send multiple lines as standard input.
- They are useful in scripts and automation tasks.
- The ending marker must be written alone on its own line.
