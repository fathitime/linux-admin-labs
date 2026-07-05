# Linux Boot Process

## Goal

Understand the basic Linux boot process.

## Boot Process Overview

1. BIOS / UEFI starts the system.
2. Bootloader loads the Linux kernel.
3. The Linux kernel initializes hardware and core system components.
4. initramfs helps prepare the system before mounting the root filesystem.
5. systemd starts as the first userspace process.
6. systemd starts required services and brings the system to the selected target.

## Key Terms

- BIOS
- UEFI
- Bootloader
- GRUB
- Kernel
- initramfs
- systemd
- target

## Commands to Explore Boot Information

```bash
dmesg | less
journalctl -b
systemctl get-default

```text
Notes
dmesg shows kernel messages.
journalctl -b shows logs from the current boot.
systemctl get-default shows the default systemd target.
