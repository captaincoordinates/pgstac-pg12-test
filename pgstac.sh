#!/bin/bash

./await-pg.sh

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