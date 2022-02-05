#!/bin/sh

./await-pg.sh

alias sql='psql -U postgres -v ON_ERROR_STOP=ON -c '

sql "CREATE SCHEMA IF NOT EXISTS partman;"
sql "CREATE EXTENSION IF NOT EXISTS pg_partman SCHEMA partman;"
