# Kafka Tile for Pivotal Cloud Foundry

Clone the Service Broker Repo and build project:

```
https://github.com/viniciusccarvalho/cf-kafka-servicebroker
```

Install the Docker images to your local host:

```
$ docker pull spotify/kafka
$ docker pull sheepkiller/kafka-manager:stable
```

Build the tile:

```
$ tile build
```

Upload to ops manager:

```
pcf import products/<tile .pivotal>
```
