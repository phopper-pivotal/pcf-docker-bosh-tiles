# CouchDB Tile for Pivotal Cloud Foundry


Install the Docker images to your lcoal host:

```
$ docker pull frodenas/couchdb
```

Build the tile:

```
$ tile build
```

Upload to ops manager:

```
pcf import products/<tile .pivotal>
```
