# pgstac-pg12-test

## PostgreSQL 12.8
pgstac fails for PostgreSQL 12.8
```
docker build -t pgstac-test-img -f Dockerfile-12.8 . && docker run --rm --name pgstac-test -e POSTGRES_PASSWORD=postgres -d pgstac-test-img && docker exec pgstac-test /pgstac.sh; docker stop pgstac-test
```

## PostgreSQL 12.8 with pg_partman
pgstac fails for PostgreSQL 12.8 with pg_partman extension
```
docker build -t pgstac-test-img -f Dockerfile-12.8-partman . && docker run --rm --name pgstac-test -e POSTGRES_PASSWORD=postgres -d pgstac-test-img && docker exec pgstac-test /partman.sh && docker exec pgstac-test /pgstac.sh; docker stop pgstac-test
```

## PostgreSQL 13.4
pgstac succeeds for PostgreSQL 13.4 (no pg_partman)
```
docker build -t pgstac-test-img -f Dockerfile-13.4 . && docker run --rm --name pgstac-test -e POSTGRES_PASSWORD=postgres -d pgstac-test-img && docker exec pgstac-test /pgstac.sh; docker stop pgstac-test
```

---

## pgstac version
To change pgstac version set build-arg `PGSTAC_VERSION=x.y.z`, for example:
`docker build -t pgstac-test-img --build-arg PGSTAC_VERSION=0.4.2 -f Dockerfile-12.8 . && docker run --rm --name pgstac-test -e POSTGRES_PASSWORD=postgres -d pgstac-test-img && docker exec pgstac-test /pgstac.sh; docker stop pgstac-test`