Deletes orphaned images from a private docker registry to recover disk space.

This container was heavily inspired by [this script](https://gist.github.com/kwk/c5443f2a1abcf0eb1eaa)

# Usage
To use it, run this:
```
$ docker run --rm --volumes-from registry-data-container nimbleci/docker-registry-pruner
```
You'll have to mount the registry data folder into this container, how you do
that is up to you.

By default the script looks for the registry data in /var/lib/docker/registry.
You can change this by specifying the "REGISTRY_DATA_DIR" environmental
variable. For example:
```
$ docker run --rm --volumes-from registry-data-container -e REGISTRY_DATA_DIR=/data/docker-registry nimbleci/docker-registry-pruner
```