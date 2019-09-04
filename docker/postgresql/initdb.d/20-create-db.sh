#!/bin/bash
set -e

# support multiple DB_NAME separated by comma (,) separator character
IFS=','
read -ra DB <<< "${DB_NAME}"
for db in "${DB[@]}"; do
  DB_NAME_TRIM=`echo "$db" | xargs`
  echo "Creating database: $DB_NAME_TRIM"

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
	CREATE DATABASE $DB_NAME_TRIM OWNER ${DB_USER};
EOSQL

done
IFS=' '
