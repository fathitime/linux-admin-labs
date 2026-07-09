# dd Command Notes

## Goal

Understand the basic usage of `dd` and safe practice examples.

---

## Safe Example: Create a Small Test File

```bash
dd if=/dev/zero of=test-10mb.bin bs=1M count=10
```

---

## Check File Size

```bash
ls -lh test-10mb.bin
file test-10mb.bin
```

---

## Important Safety Warning

`dd` can write directly to disks and block devices.

Incorrect usage can destroy data.

For practice, I only use `dd` to create test files inside a lab directory.

I do not run `dd` against real disk devices such as:

```bash
/dev/sda
/dev/sdb
/dev/nvme0n1
```

unless I fully understand the target and I am working in a controlled lab.
