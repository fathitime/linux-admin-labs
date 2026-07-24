# vi and Vim Cheat Sheet

## Open a File

```bash
vi file.txt
```

Check which editor is being used:

```bash
type vi
readlink -f "$(command -v vi)"
vi --version
```

## Editor Modes

| Mode | Purpose | How to Enter |
|---|---|---|
| Normal mode | Navigation and editing commands | Press `Esc` |
| Insert mode | Enter or modify text | Press `i`, `a`, `o`, or `O` |
| Command-line mode | Save, quit, search, and configuration | Press `:` from Normal mode |

## Navigation

| Command | Action |
|---|---|
| `h` | Move left |
| `j` | Move down |
| `k` | Move up |
| `l` | Move right |
| `w` | Move to the next word |
| `b` | Move to the previous word |
| `e` | Move to the end of the word |
| `0` | Move to the beginning of the line |
| `$` | Move to the end of the line |
| `gg` | Move to the beginning of the file |
| `G` | Move to the end of the file |
| `10G` | Move to line 10 |
| `Ctrl + F` | Move forward one screen |
| `Ctrl + B` | Move backward one screen |

A number can be placed before many commands:

```text
5j
3w
10G
```

## Insert and Modify Text

| Command | Action |
|---|---|
| `i` | Insert before the cursor |
| `a` | Append after the cursor |
| `I` | Insert at the beginning of the line |
| `A` | Append at the end of the line |
| `o` | Open a new line below |
| `O` | Open a new line above |
| `r` | Replace one character |
| `cw` | Change the current word |
| `u` | Undo the last change |
| `Ctrl + R` | Redo the last undone change |

## Delete, Copy, and Paste

| Command | Action |
|---|---|
| `x` | Delete the character under the cursor |
| `dw` | Delete a word |
| `dd` | Delete the current line |
| `3dd` | Delete three lines |
| `yy` | Copy the current line |
| `3yy` | Copy three lines |
| `p` | Paste after the cursor or current line |
| `P` | Paste before the cursor or current line |

## Search

Search forward:

```text
/error
```

Search backward:

```text
?error
```

| Command | Action |
|---|---|
| `n` | Repeat the search in the same direction |
| `N` | Repeat the search in the opposite direction |

## Save and Exit

| Command | Action |
|---|---|
| `:w` | Save the file |
| `:q` | Quit if no unsaved changes exist |
| `:wq` | Save and quit |
| `ZZ` | Save and quit if modified |
| `:q!` | Quit and discard changes |
| `:e!` | Reload the file and discard unsaved changes |
| `:w new-file.txt` | Save under a new filename |

## Shell Commands from vi

Run a shell command:

```text
:!pwd
```

```text
:!ls -la
```

## Help

```text
:help
```

```text
:help navigation
```

> `:w!` attempts to force writing, but it cannot bypass operating-system permissions when the user does not have permission to write the file.
