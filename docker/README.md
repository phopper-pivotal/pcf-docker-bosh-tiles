# Docker Bosh Tile for Pivotal Cloud Foundry

This repository assumes you have the tile generator installed

```
$ git clone https://github.com/cloudfoundry-community/docker-boshrelease.git
$ cd docker-boshrelease/
$ bosh create release --force --with-tarball
```

Update the tile.yml file with the location and version of the dev release

``
# tile.yml
`
packages:
 - name: docker-bosh
   type: bosh-release
   path: dev_releases/docker/docker-28.0.1+dev.3.tgz
```

Build the tile:

```
$ tile build
```
