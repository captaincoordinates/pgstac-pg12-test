#!/bin/sh

set -e

while ! nc -z localhost 5432; do echo "postgres not yet ready"; sleep 1; done;

psql -U postgres -v ON_ERROR_STOP=ON -f /asset/pypgstac/migrations/pgstac.${PGSTAC_VERSION}.sql