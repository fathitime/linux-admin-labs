# RPM and Fedora Package Management

## Goal

Practice package management commands on RPM-based Linux distributions such as Fedora.

## Commands Practiced

```bash
dnf search nginx
dnf info nginx
sudo dnf install nginx
sudo dnf remove nginx
rpm -qa
rpm -qi bash
rpm -ql bash
```

## Repository Commands

```bash
dnf repolist
ls /etc/yum.repos.d/
```

## Notes

- `dnf` is the default package manager in modern Fedora.
- `dnf search` searches for packages.
- `dnf install` installs packages.
- `dnf remove` removes packages.
- `rpm -qa` lists installed RPM packages.
- `/etc/yum.repos.d/` contains repository configuration files.
