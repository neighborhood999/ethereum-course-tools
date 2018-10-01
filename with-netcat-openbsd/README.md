# Ethereum with netcat-openbsd

## Usage

Build the image by Dockerfile and running container:

```shell
$ make
```

Check container status:

```shell
$ docker ps

CONTAINER ID        IMAGE                                                COMMAND             CREATED             STATUS              PORTS                                                                   NAMES
7a8065d035de        neighborhood999/ethereum-with-netcat-openbsd:1.0.0   "./entrypoint.sh"   4 seconds ago       Up 3 seconds        0.0.0.0:8545->8545/tcp, 0.0.0.0:30303->30303/tcp, 8546/tcp, 30303/udp   ethereum-private-node
```

## netcat-openbsd

> Using IPC communicate with geth node.

After running container, you can open new terminal tab exectue `make netcat`

```shell
$ make netcat
```

paste something:

```json
{"jsonrpc": "2.0", "method": "eth_accounts", "params": [], "id": 1}
```

press enter you will see the result:

```json
{"jsonrpc":"2.0","id":1,"result":["0x6bb46e8f9adab11ad0a492b41f7fb6904fb7589c"]}
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
