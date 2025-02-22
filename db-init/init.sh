#!/bin/bash
set -e

echo "Starting init.sh - Importing all SQL files"

# Wait for the database to be ready
until mysqladmin ping -h"localhost" --silent; do
    echo "Waiting for MariaDB to start..."
    sleep 10
done

echo "MariaDB is up - executing SQL scripts"

# Import all SQL files in the db-init directory
for file in /docker-entrypoint-initdb.d/*.sql; do
    # Skip init.sh itself
    if [[ "$file" == "/docker-entrypoint-initdb.d/init.sh" ]]; then
        continue
    fi
    echo "Importing $file"
    mysql -h localhost -u root -p"$MYSQL_ROOT_PASSWORD" myems < "$file"
    if [ $? -ne 0 ]; then
        echo "Error importing $file"
        exit 1
    fi
    echo "Imported $file"
done

# Wait for the tables to be created. Check for tbl_meter_hourly as a proxy for completion.
timeout=300
echo "Waiting for database initialization to complete..."
while ! mysql -h localhost -u root -p"$MYSQL_ROOT_PASSWORD" -e "SHOW TABLES FROM myems LIKE 'tbl_meter_hourly';" | grep -q tbl_meter_hourly; do
  timeout=$((timeout - 1))
  if [ $timeout -eq 0 ]; then
    echo "Timeout waiting for database initialization."
    exit 1
  fi
  echo "Waiting for tbl_meter_hourly to be created..."
  sleep 1
done

echo "Database initialization complete."
