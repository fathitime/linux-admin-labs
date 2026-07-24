# Configuring the Default Editor

## Check Current Editor

```bash
echo "$EDITOR"
echo "$VISUAL"
```

## Set Vim for the Current Shell

```bash
export EDITOR=vim
export VISUAL=vim
```

Verify:

```bash
echo "$EDITOR"
echo "$VISUAL"
```

## Make the Setting Persistent

Add the following lines to `~/.bashrc`:

```bash
export EDITOR=vim
export VISUAL=vim
```

Reload the shell configuration:

```bash
source ~/.bashrc
```

## Other Common Editors

| Editor | Description |
|---|---|
| `vi` | Common Unix text editor |
| `vim` | Improved version of vi |
| `nano` | Beginner-friendly terminal editor |
| `emacs` | Full-featured and extensible editor |
| `micro` | Modern terminal editor |
| `nvim` | Neovim command |

## Notes

Some commands and applications use `EDITOR`, while others prefer `VISUAL`. Setting both variables provides more consistent behavior.
