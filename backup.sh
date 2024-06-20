#!/bin/bash


DB_NAME="postgres"
DB_USER="postgres"
DB_HOST="localhost"
DB_PORT="5432"
DB_PASS="password"
BACKUP_DIR="/var/www/html/backup"

FileName=$(date +"%Y%m%d%H%M%S")

BACKUP_FILE="$BACKUP_DIR/${DB_NAME}_backup_$FileName.sql.gz"


mkdir -p "$BACKUP_DIR"



PGPASSWORD="$DB_PASS"  pg_dump -U "$DB_USER" -h "$DB_HOST" -p "$DB_PORT" "$DB_NAME" | gzip > "$BACKUP_FILE"


if [ $? -eq 0 ]; then
  echo "Backup successful: $BACKUP_FILE"
else
  echo "Backup failed!"
fi
