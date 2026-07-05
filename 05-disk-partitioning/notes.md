# Disk Partitioning Concepts

## Goal

Understand basic disk partitioning concepts in Linux, including partition tables, disk layouts, and common partitioning tools.

## Key Concepts

- Disk
- Partition
- Partition table
- MBR
- GPT
- Primary partition
- Extended partition
- Logical partition
- Swap partition
- Root partition
- Home partition

## Useful Commands

```bash
lsblk
sudo fdisk -l
sudo parted -l
blkid
df -h
```

## Notes

- `lsblk` lists block devices such as disks and partitions.
- `fdisk -l` displays partition information.
- `parted -l` displays partition tables and disk layout.
- `blkid` shows UUIDs and filesystem types.
- `df -h` shows mounted filesystem usage.

## Safety Note

Disk partitioning commands can be destructive if used incorrectly. I practice these topics only inside a virtual machine or safe lab environment.
