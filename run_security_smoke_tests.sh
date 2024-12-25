#!/bin/bash

# Set the database details
DB_HOST="devsecops-mysqldb-1"  # Name of the MySQL container
DB_USER="root"  # Use root or the correct user
DB_PASS="root"  # Ensure this matches your MySQL root password
DB_NAME="ski-project3"  # Replace with your actual database name

# Try to connect to the database and list tables
if mysql -h $DB_HOST -u $DB_USER -p$DB_PASS -e "SHOW TABLES;" $DB_NAME; then
    echo "PASS: Successfully connected to the database."
else
    echo "FAIL: Could not connect to the database."
    exit 1
fi
