# Jenkins Tile for Pivotal Cloud Foundry


Install the Docker images to your local host:

```
$ docker pull jenkins
```

Build the tile:

```
$ tile build
```

Upload to ops manager:

```
pcf import products/<tile .pivotal>
```
