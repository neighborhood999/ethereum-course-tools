# Truffle interact with Ganache

## Usage

Build image and running container:

```shell
$ make
```

Check container status:

```shell
$ docker ps

CONTAINER ID        IMAGE                  COMMAND                  CREATED             STATUS              PORTS                    NAMES
837a3991861f        with-truffle_truffle   "sh"                     6 seconds ago       Up 5 seconds        0.0.0.0:8080->8080/tcp   with-truffle_truffle_1
7bf94e33ab6e        with-truffle_ganache   "ganache-cli -h 0.0.…"   6 seconds ago       Up 5 seconds        0.0.0.0:8545->8545/tcp   with-truffle_ganache_1
```

Entery truffle container:

```shell
$ make exec
```
