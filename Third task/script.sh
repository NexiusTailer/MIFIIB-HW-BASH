#!/bin/bash

MAIL_NAME=nexius.beslam@yandex.ru

# Send email via Logwatch with detailed logs
sudo logwatch --detail high --mailto $MAIL_NAME --range All --service vsftpd --service sshd --format html --output mail

# xrdp service doesn't exist in /usr/share/logwatch/scripts/services
# so it's not integrated with Logwatch by default and cannot be used