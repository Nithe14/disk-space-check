# Check your disk space every time you open your terminal!

Hi! This script will display your disk space every time you open your terminal. If the disk space is less then 50% there would be a yellow warning. If the disk space is less then 80% there would be a red critical messege. You can edit vaules of warning and critical by editing `$WARN_MESSEGE_VALUE` and `$CRITICAL_MESSEGE_VALUE`. Do not forget to change mount point of your disk also (`$MOUNT_POINT`).

## Quick guide

Execute this commands in your terminal:

```bash
mkdir ~/bin
cd ~/bin
curl https://raw.githubusercontent.com/Nithe14/disk-space-check/main/check_disk_space.sh > check_disk_space.sh
chmod +x check_disk_space.sh
```

Add this at the end of your `~/.bashrc` (or `~/.zshrc`) file:

```bash
~/bin/check_disk_space.sh
```

Execute this command in your terminal:

```bash
source ~/.bashrc
```

Restart your terminal. It should work now.

It's very basic, I know. But I find it useful :). 
