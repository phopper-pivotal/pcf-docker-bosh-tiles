#!/bin/bash
USER=${MONGODB_USERNAME:-mongo}
PASS=${MONGODB_PASSWORD:-$(pwgen -s -1 16)}

# Start MongoDB service
/usr/bin/mongod --dbpath /data --nojournal &
while ! nc -vz localhost 27017; do sleep 1; done

# Create User
echo "Creating superuser: \"$USER\"..."
mongo $DB --eval "db.createUser({ user: '$USER', pwd: '$PASS', roles: [ { role: 'root', db: 'admin' }, { role: 'userAdminAnyDatabase', db: 'admin' }, { role: 'readWriteAnyDatabase', db: 'admin'}, { role: 'dbAdminAnyDatabase', db: 'admin' },{ role: 'clusterAdmin', db: 'admin' } ] });"

# Stop MongoDB service
/usr/bin/mongod --dbpath /data --shutdown

echo "========================================================================"
echo "MongoDB User: \"$USER\""
echo "MongoDB Password: \"$PASS\""
echo "MongoDB Database: \"admin\""
echo "MongoDB Roles: \"userAdminAnyDatabase, readWriteAnyDatabase, dbAdminAnyDatabase, clusterAdmin\""
echo "========================================================================"

rm -f /.firstrun
