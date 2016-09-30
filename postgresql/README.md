# PostgreSQL Tile for Pivotal Cloud Foundry

Clone the Service Broker Repo and build project:

```
https://github.com/cloudfoundry-community/postgresql-cf-service-broker
```

Install the Docker images to your local host:

```
$ docker pull frodenas/postgresql
```

Build the tile:

```
$ tile build
```

Upload to ops manager:

```
pcf import products/<tile .pivotal>
```
