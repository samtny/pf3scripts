#!/bin/bash

set -e

HOME_DIR=/usr/home/samtny

DB_NAME=samtny_pf3

MYSQL_DEFAULTS_FILE=${HOME_DIR}/.${DB_NAME}.my.cnf

BACKUP_DIR=${HOME_DIR}/backup
BACKUP_FILENAME=${DB_NAME}.sql
BACKUP_FILE=${BACKUP_DIR}/${BACKUP_FILENAME}

BACKUP_DAYS=30

mkdir -p ${BACKUP_DIR}

/usr/local/bin/mysqldump --defaults-file=${MYSQL_DEFAULTS_FILE} ${DB_NAME} > ${BACKUP_FILE}

savelog -n -c ${BACKUP_DAYS} ${BACKUP_FILE}

exit 0

