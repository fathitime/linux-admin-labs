# systemd Targets and Runlevels

## Goal

Understand systemd targets and their relationship with traditional Linux runlevels.

## Commands Practiced

```bash
systemctl get-default
systemctl list-units --type=target
systemctl list-unit-files --type=target
systemctl isolate multi-user.target
systemctl isolate graphical.target


Common Targets
systemd Target	Traditional Runlevel	Purpose
poweroff.target          	0           Shut down the system
rescue.target	            1          	Single-user rescue mode
multi-user.target        	3	          Multi-user mode without GUI
graphical.target	        5	          Multi-user mode with GUI
reboot.target	            6	          Reboot the system

Notes
multi-user.target is commonly used for server environments.
graphical.target starts the graphical user interface.
systemctl get-default shows the default target.
systemctl isolate switches to another target temporarily.
