docker stop sql-server
docker rm sql-server
docker run -e 'ACCEPT_EULA=Y' --name sql-server -e 'SA_PASSWORD=Pa$$w0rd1' -p 1433:1433 -d microsoft/mssql-server-linux:2017-CU4

docker stop some-redis
docker rm some-redis
docker run --name some-redis -p 6379:6379 -d redis

docker exec -it sql-server /opt/mssql-tools/bin/sqlcmd \
   -S localhost -U SA -P 'Pa$$w0rd1' \
   -Q 'CREATE DATABASE demo'

echo "// *** fin levantar Bases *** //"
