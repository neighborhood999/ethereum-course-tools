# Create Ethereum Private Chain

## Usage

```shell
$ make
```

Check container is created:

```shell
$ docker ps

CONTAINER ID        IMAGE                COMMAND             CREATED             STATUS              PORTS                                                                   NAMES
b372baa7b13e        ethereum/client-go   "/root/build.sh"    5 seconds ago       Up 4 seconds        0.0.0.0:8545->8545/tcp, 0.0.0.0:30303->30303/tcp, 8546/tcp, 30303/udp   eth-private-node
```

## JavaScript Console

```shell
$ make attach

WARN [09-21|08:29:40.781] Sanitizing cache to Go's GC limits       provided=1024 updated=666
Welcome to the Geth JavaScript console!

instance: Geth/v1.8.16-unstable-5d1d1a80/linux-amd64/go1.10.4
 modules: admin:1.0 debug:1.0 eth:1.0 ethash:1.0 miner:1.0 net:1.0 personal:1.0 rpc:1.0 txpool:1.0 web3:1.0

>
```
