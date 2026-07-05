# Filesystems and Mounting

## Goal

Practice basic Linux filesystem and mounting commands.

## Filesystem Concepts

Common Linux filesystem types:

- ext4
- xfs
- btrfs
- vfat
- swap

## Commands Practiced

```bash
df -h
du -sh *
lsblk -f
blkid
mount
findmnt
cat /etc/fstab
```

## Useful Commands

```bash
sudo mkdir /mnt/test
sudo mount /dev/sdX1 /mnt/test
sudo umount /mnt/test
```

## Notes

- `df -h` shows disk usage of mounted filesystems.
- `du -sh` shows directory size.
- `lsblk -f` shows block devices with filesystem information.
- `mount` shows mounted filesystems.
- `findmnt` displays mounted filesystems in a tree format.
- `/etc/fstab` stores persistent mount configuration.

## Safety Note

Mounting and formatting should be practiced only inside a virtual machine or lab disk.
