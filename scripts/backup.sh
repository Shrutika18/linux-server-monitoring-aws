
#!/bin/bash

# Automated Linux Backup Script

PROJECT_DIR="$HOME/linux-cloud-project"
SOURCE_DIR="$PROJECT_DIR/data"
BACKUP_DIR="$PROJECT_DIR/backups"

DATE=$(date '+%Y%m%d_%H%M%S')

# Create backup directory
mkdir -p "$BACKUP_DIR"

# Backup filename
BACKUP_FILE="$BACKUP_DIR/backup_$DATE.tar.gz"

# Create compressed backup
if tar -czf "$BACKUP_FILE" -C "$PROJECT_DIR" data; then

    echo "Backup completed successfully!"
    echo "Backup file: $BACKUP_FILE"

else

    echo "Backup failed!"
    exit 1

fi

# Delete backups older than 7 days
find "$BACKUP_DIR" -type f \
-name "backup_*.tar.gz" -mtime +7 -delete

echo "Backup process completed!"
