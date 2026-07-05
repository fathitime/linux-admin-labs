# Shutdown and Reboot Commands

## Goal

Practice Linux commands for safely shutting down and rebooting the system.

## Commands Practiced

```bash
shutdown --help
reboot --help
systemctl poweroff --help
systemctl reboot --help

## Common Commands

sudo shutdown now
sudo shutdown -r now
sudo reboot
sudo systemctl poweroff
sudo systemctl reboot

```text
Notes
shutdown now shuts down the system immediately.
shutdown -r now reboots the system immediately.
reboot restarts the system.
systemctl poweroff powers off the system using systemd.
systemctl reboot reboots the system using systemd.
Safety Note

These commands should be practiced only inside a virtual machine or lab environment.
