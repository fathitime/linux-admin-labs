# Bootloaders and GRUB

## Goal

Understand the role of bootloaders in the Linux boot process.

## Key Concepts

- Bootloader
- GRUB
- Kernel loading
- initramfs
- Boot menu
- Boot parameters

## Useful Commands

```bash
ls /boot
ls /boot/grub
cat /etc/default/grub
uname -r
```

## Notes

- GRUB is a common Linux bootloader.
- The bootloader loads the Linux kernel into memory.
- `/boot` contains kernel and boot-related files.
- `/etc/default/grub` stores GRUB configuration options.
- `uname -r` shows the currently running kernel version.

## Safety Note

GRUB configuration should not be changed on a real system unless fully understood. Practice should be done inside a virtual machine.
