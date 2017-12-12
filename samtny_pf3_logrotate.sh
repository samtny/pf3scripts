#!/bin/bash

set -e

HOME_DIR=/usr/home/samtny

LOG_DIR=${HOME_DIR}/pinfinder_logs/pf3
LOG_ROTATE_DAYS=30

LOG_FILENAME=scrape.log
LOG_FILE=${LOG_DIR}/${LOG_FILENAME}

savelog -n -c ${LOG_ROTATE_DAYS} ${LOG_FILE}

LOG_FILENAME=backup.log
LOG_FILE=${LOG_DIR}/${LOG_FILENAME}

savelog -n -c ${LOG_ROTATE_DAYS} ${LOG_FILE}

LOG_FILENAME=pinfinder.log
LOG_FILE=${LOG_DIR}/${LOG_FILENAME}

savelog -n -c ${LOG_ROTATE_DAYS} ${LOG_FILE}

exit 0
