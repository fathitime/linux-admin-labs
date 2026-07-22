# Regular Expression Cheat Sheet

## Anchors

| Pattern | Meaning |
|---|---|
| `^ERROR` | Line starts with ERROR |
| `completed$` | Line ends with completed |
| `^$` | Empty line |

## Character Matching

| Pattern | Meaning |
|---|---|
| `.` | Any single character |
| `[abc]` | a, b, or c |
| `[a-z]` | Lowercase character |
| `[A-Z]` | Uppercase character |
| `[0-9]` | Digit from 0 to 9 |
| `[^0-9]` | Any character except a digit |

## POSIX Character Classes

Use character classes inside double brackets:

| Pattern | Meaning |
|---|---|
| `[[:digit:]]` | Digit |
| `[[:alpha:]]` | Alphabetic character |
| `[[:alnum:]]` | Alphabetic or numeric character |
| `[[:lower:]]` | Lowercase character |
| `[[:upper:]]` | Uppercase character |
| `[[:space:]]` | Whitespace |
| `[[:blank:]]` | Space or tab |

## Extended Regex Quantifiers

Used with `grep -E` or `sed -E`:

| Pattern | Meaning |
|---|---|
| `a*` | Zero or more occurrences |
| `a+` | One or more occurrences |
| `a?` | Zero or one occurrence |
| `a{3}` | Exactly three occurrences |
| `a{2,5}` | Between two and five occurrences |

## Grouping and Alternation

```regex
(ERROR|WARNING)
```

Matches either `ERROR` or `WARNING`.

```regex
^(INFO|ERROR)
```

Matches lines beginning with either `INFO` or `ERROR`.

## BRE and ERE

Basic Regular Expression:

```bash
grep 'ERROR\|WARNING' file.txt
```

Extended Regular Expression:

```bash
grep -E 'ERROR|WARNING' file.txt
```

Extended syntax is usually easier to read for grouping, alternation, and advanced quantifiers.
