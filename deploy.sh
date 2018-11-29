#!/bin/bash
echo "// *** Starts deploy.sh. *** //"
docker stop curso
docker rm curso
docker run --name curso --link some-redis:some-redis --link sql-server:sql-server -e JAVA_OPTS="-Dspring.profiles.active=ic" -p 8080:8080 -d curso-ic:0.0.1-SNAPSHOT
echo "// *** Ends deploy.sh. *** //"