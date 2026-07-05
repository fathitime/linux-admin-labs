# Shared Libraries

## Goal

Understand shared libraries and how Linux applications use them.

## Key Concepts

- Shared libraries
- Dynamic linking
- Library paths
- ldconfig
- ldd

## Commands Practiced

```bash
ldd /bin/ls
ldd /bin/bash
ldconfig -p
echo $LD_LIBRARY_PATH
```

## Notes

- Shared libraries allow programs to reuse common code.
- `ldd` shows the shared libraries required by a binary.
- `ldconfig -p` shows cached shared libraries.
- `LD_LIBRARY_PATH` can define additional library search paths.
