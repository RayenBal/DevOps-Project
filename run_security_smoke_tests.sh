#!/bin/bash


DB_HOST="localhost"
DB_USER="user"
DB_PASS="password"
DB_NAME="mydatabase"

# Try to connect to the database and list tables
if mysql -h $DB_HOST -u $DB_USER -p$DB_PASS -e "SHOW TABLES;" $DB_NAME; then
    echo "PASS: Successfully connected to the database."
else
    echo "FAIL: Could not connect to the database."
    exit 1
fi
