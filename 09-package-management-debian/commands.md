# Debian and Ubuntu Package Management

## Goal

Practice package management commands on Debian-based Linux distributions such as Ubuntu.

## Commands Practiced

```bash
sudo apt update
apt list --installed
apt search nginx
apt show nginx
sudo apt install nginx
sudo apt remove nginx
sudo apt autoremove
dpkg -l
dpkg -S /bin/bash
```

## Repository Files

```bash
cat /etc/apt/sources.list
ls /etc/apt/sources.list.d/
```

## Notes

- `apt update` updates package index information.
- `apt install` installs packages.
- `apt remove` removes packages.
- `apt autoremove` removes unused dependencies.
- `dpkg -l` lists installed packages.
- `/etc/apt/sources.list` contains repository configuration.
