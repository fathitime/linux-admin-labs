# vi Hands-On Practice Checklist

## Lab Environment

Perform these exercises inside an Ubuntu or Fedora virtual machine.

Create a local copy of the sample files:

```bash
mkdir -p ~/lpic1-labs/vi-editing
cp sample-data/app.conf ~/lpic1-labs/vi-editing/
cp sample-data/deployment-notes.txt ~/lpic1-labs/vi-editing/
cd ~/lpic1-labs/vi-editing
```

## Exercise 1: Navigation

Open the configuration file:

```bash
vi app.conf
```

Practice:

- Move with `h`, `j`, `k`, and `l`
- Move with `w`, `b`, and `e`
- Go to the first line with `gg`
- Go to the final line with `G`
- Go directly to line 5 using `5G`

## Exercise 2: Insert and Modify

Make these changes using vi:

- Change `APP_ENV=development` to `APP_ENV=production`
- Change `APP_PORT=8080` to `APP_PORT=9090`
- Change `DEBUG=true` to `DEBUG=false`
- Change `LOG_LEVEL=debug` to `LOG_LEVEL=info`
- Change `BACKUP_ENABLED=false` to `BACKUP_ENABLED=true`
- Change the backup path to `/var/backups/linux-lab`

Save the file with:

```text
:w
```

## Exercise 3: Add Text

Add this line to the end of the configuration:

```text
HEALTH_CHECK_ENABLED=true
```

Practice using both:

- `o`
- `A`

## Exercise 4: Delete and Restore

- Delete one line using `dd`
- Restore the deleted line using `p`
- Copy one line using `yy`
- Paste it using `p`
- Undo the change using `u`

## Exercise 5: Search

Open:

```bash
vi deployment-notes.txt
```

Search forward for:

```text
/backup
```

Search backward for:

```text
?development
```

Use `n` and `N` to move between matches.

## Exercise 6: Save and Exit

Practice:

```text
:w
:wq
:q!
ZZ
```

## Exercise 7: Verify the Result

After exiting vi:

```bash
cat app.conf
grep -E 'APP_ENV|APP_PORT|DEBUG|BACKUP' app.conf
```

## Completion Criteria

This lab is complete when I can:

- Open and exit vi without assistance
- Navigate without arrow keys
- Insert and modify text
- Delete, copy, and paste lines
- Search inside a file
- Save or discard changes intentionally
