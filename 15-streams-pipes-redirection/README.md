# Streams, Pipes, and Redirects (LPIC-1 103.4)

## Goal

Practice Linux standard streams, redirection, pipes, `xargs`, `tee`, and here-documents as part of LPIC-1 103.4.

This module focuses on controlling command input and output, processing text streams, separating errors from normal output, and building command pipelines.

---

## Skills Practiced

- Redirecting standard input, output, and error
- Understanding `stdin`, `stdout`, and `stderr`
- Using file descriptors `0`, `1`, and `2`
- Redirecting output with `>` and `>>`
- Redirecting errors with `2>` and `2>>`
- Redirecting both output and errors with `&>` and `&>>`
- Sending unwanted output to `/dev/null`
- Using pipes to combine commands
- Using `xargs` to pass command output as arguments
- Using `tee` to write output to screen and file
- Using here-documents for multi-line input

---

## Files in This Module

| File | Description |
|---|---|
| `lab-setup.sh` | Creates sample files for stream and pipe practice |
| `redirection.md` | Standard stream and redirection examples |
| `pipes.md` | Practical command pipeline examples |
| `xargs.md` | Examples of using command output as arguments |
| `tee.md` | Save output to file while displaying it |
| `here-documents.md` | Multi-line stdin examples |
| `practice-summary.md` | Summary of what was practiced |

---

## Standard Streams

| Stream | File Descriptor | Purpose |
|---|---:|---|
| stdin | 0 | Standard input |
| stdout | 1 | Standard output |
| stderr | 2 | Standard error |

---

## Practice Result

This module was studied and documented as part of LPIC-1 103.4: Use streams, pipes, and redirects.
