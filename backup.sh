#!/bin/bash

# Specify the source directory you want to backup
source_directory="/path/to/source_directory"

# Specify the destination directory where you want to store the backup
destination_directory="/path/to/destination_directory"

# Create a timestamp for the backup filename
timestamp=$(date +%Y%m%d_%H%M%S)

# Create a tarball of the source directory
tar -czf "$destination_directory/backup_$timestamp.tar.gz" "$source_directory"

# Verify if the tarball was created successfully
if [ -e "$destination_directory/backup_$timestamp.tar.gz" ]; then
    echo "Backup created successfully at $destination_directory/backup_$timestamp.tar.gz"
else
    echo "Failed to create backup. Please check the source directory path and try again."
fi
