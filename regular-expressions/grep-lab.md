# grep Regular Expression Lab

## Goal

Practice searching and filtering log, configuration, and user data.

## Basic Search

Find all error messages:

```bash
grep 'ERROR' sample-data/app.log
```

Show matching line numbers:

```bash
grep -n 'ERROR' sample-data/app.log
```

Count errors:

```bash
grep -c 'ERROR' sample-data/app.log
```

## Case-Insensitive Search

```bash
grep -i 'user' sample-data/app.log
```

## Inverse Matching

Show lines that are not informational messages:

```bash
grep -v 'INFO' sample-data/app.log
```

## Search with Anchors

Lines beginning with a date:

```bash
grep -E '^[[:digit:]]{4}-[[:digit:]]{2}-[[:digit:]]{2}' \
    sample-data/app.log
```

Lines ending with `stopped`:

```bash
grep -E 'stopped$' sample-data/app.log
```

## Alternation

Find warnings and errors:

```bash
grep -E 'WARNING|ERROR' sample-data/app.log
```

## Character Classes and Quantifiers

Find percentages with two digits:

```bash
grep -E '[[:digit:]]{2} percent' sample-data/app.log
```

Find IPv4-like addresses:

```bash
grep -E '([[:digit:]]{1,3}\.){3}[[:digit:]]{1,3}' \
    sample-data/app.log
```

> This pattern finds IPv4-like text but does not fully validate whether each number is between 0 and 255.

## Search Configuration Variables

Find uppercase variable names:

```bash
grep -E '^[A-Z_]+=' sample-data/config.txt
```

Find variables with empty values:

```bash
grep -E '^[A-Z_]+=$' sample-data/config.txt
```

Find numeric configuration values:

```bash
grep -E '^[A-Z_]+=[[:digit:]]+$' sample-data/config.txt
```

## Fixed-String Search

Search without interpreting regex characters:

```bash
grep -F 'user_194' sample-data/app.log
```

## Recursive Search

Search all files in the sample directory:

```bash
grep -rniE 'ERROR|WARNING' sample-data/
```

## Display Only Matching Filenames

```bash
grep -rl 'ERROR' sample-data/
```

## Practical Pipeline

Count each log level:

```bash
grep -Eo 'INFO|WARNING|ERROR|DEBUG' sample-data/app.log \
    | sort \
    | uniq -c \
    | sort -nr
```
