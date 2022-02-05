# pgstac-pg12-test

## PostgreSQL 12.8
`docker build -t pgstac-test-img -f Dockerfile-12.8 . && docker run --rm --name pgstac-test -e POSTGRES_PASSWORD=postgres -d pgstac-test-img && docker exec pgstac-test /pgstac.sh; docker stop pgstac-test`

## PostgreSQL 13.4
`docker build -t pgstac-test-img -f Dockerfile-13.4 . && docker run --rm --name pgstac-test -e POSTGRES_PASSWORD=postgres -d pgstac-test-img && docker exec pgstac-test /pgstac.sh; docker stop pgstac-test`