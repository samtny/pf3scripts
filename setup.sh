#!/bin/bash

set -e

HOME_DIR=/usr/home/samtny

mkdir -p ${HOME_DIR}/pinfinder_logs/pf3
mkdir -p ${HOME_DIR}/pinfinder_backup

croncmd="${HOME_DIR}/pf3scripts/backup.sh >> /usr/home/samtny/pinfinder_logs/pf3/backup.log 2>&1"
cronjob="19 12 * * * $croncmd"

( crontab -l | grep -v -F "$croncmd" ; echo "$cronjob" ) | crontab -

croncmd="${HOME_DIR}/pf3scripts/scrape.sh >> /usr/home/samtny/pinfinder_logs/pf3/scrape.log 2>&1"
cronjob="19 2 * * *  $croncmd"

( crontab -l | grep -v -F "$croncmd" ; echo "$cronjob" ) | crontab -

croncmd="${HOME_DIR}/pf3scripts/logrotate.sh"
cronjob="19 3 * * *  $croncmd"

( crontab -l | grep -v -F "$croncmd" ; echo "$cronjob" ) | crontab -

exit 0
