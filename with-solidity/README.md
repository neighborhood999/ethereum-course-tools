# Ethereum with Solidity

## Usage

Build the image by Dockerfile and running container:

```shell
$ make
```

Check container status:

```shell
$ docker ps

CONTAINER ID        IMAGE                                          COMMAND             CREATED             STATUS              PORTS                                                                   NAMES
13a75e2c4cc1        neighborhood999/ethereum-private-chain:1.0.0   "./entrypoint.sh"        15 seconds ago      Up 14 seconds       0.0.0.0:8545->8545/tcp, 0.0.0.0:30303->30303/tcp, 8546/tcp, 30303/udp   ethereum-private-node
```

## Solidity

After running container, you can open new terminal tab for checking `solc` command:

```shell
$ make solc

/ # solc
solc, the Solidity commandline compiler.

This program comes with ABSOLUTELY NO WARRANTY. This is free software, and you
are welcome to redistribute it under certain conditions. See 'solc --license'
for details.

...
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
