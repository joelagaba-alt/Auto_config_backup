@echo off
REM run_backup.bat
REM Triggers the network config backup playbook inside WSL.
REM Meant to be run by Windows Task Scheduler so it works even if
REM you haven't manually opened a WSL terminal that day.

wsl -d Ubuntu bash -c "cd /home/agaba/net-backup && ansible-playbook backup_playbook.yml >> /home/agaba/net-backup/backup_log.txt 2>&1"
