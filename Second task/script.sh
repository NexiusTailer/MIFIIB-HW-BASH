#!/bin/bash

DATE=$(date +%d-%m-%Y)
BACKUP_PATH="/home/${USER}/archive/"
FILE_NAME=Backup-$DATE.tar.gz

# Just to be double-sure
sudo mkdir $BACKUP_PATH

# Create backups of all needed folders and subfolders
# Listing manually without cycle because we need one single archive with all files
sudo tar -zcvpf $BACKUP_PATH/$FILE_NAME /home/${USER}/Desktop /home/${USER}/Documents \
/home/${USER}/Downloads /home/${USER}/Templates /home/${USER}/Public \
/home/${USER}/Music /home/${USER}/Pictures /home/${USER}/Videos \
/etc/ssh/sshd_config /etc/xrdp /etc/vsftpd.conf /var/log

# Remove .tar.gz files older than 2 weeks
find $BACKUP_PATH -type f -name '*.tar.gz' -mtime +14 -exec rm {} \;