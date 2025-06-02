# File Cleaner Bash Script

## Overview
This is a bash script that automatically deletes `.bak` files older than 3 days from a specified folder. It logs each deletion with timestamps and is fully automated using `cron` on macOS.

## 🔧 Features
- Deletes old `.bak` files using `find`
- Logs actions to `deletion.log`
- Runs daily with `cron`
- macOS-compatible (includes Full Disk Access instructions)

## How to Use
```bash
chmod +x clean_bak.sh
./clean_bak.sh

