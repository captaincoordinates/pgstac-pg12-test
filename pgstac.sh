#!/bin/bash

while ! nc -z localhost 5432; do echo "waiting on postgres"; sleep 1; done;

psql -U postgres -v ON_ERROR_STOP=ON -f /asset/pypgstac/migrations/pgstac.${PGSTAC_VERSION}.sql

if [[ "$?" == "0" ]]; then
    echo -------
    echo success
    echo -------
else
    echo -------
    echo failure
    echo -------
fi