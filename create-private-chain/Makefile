DIRNAME := "eth-private-chain-test"
CONTAINER_NAME := "eth-private-node"
NETWORK_NAME := "net99"
RPC_PORT := 8545
PORT := 30303

all: pull create-dir build

.PHONY: create-dir
create-dir:
	@cd ~ \
	&& mkdir $(DIRNAME)  \
	&& cp $(PWD)/build.sh $(PWD)/genesis.json $(HOME)/$(DIRNAME)

.PHONY: pull
pull:
	@if test ! -z $(docker images -q ethereum/client-go:latest); then \
		@docker pull ethereum/client-go; \
	else \
		echo "\033[0;32methereum/client-go:latest image is exist.\033[0m"; \
	fi

.PHONY: build
build:
	@docker run -d --entrypoint "/root/build.sh" \
    --name $(CONTAINER_NAME) \
		-v $(HOME)/$(DIRNAME):/root \
		-p $(RPC_PORT):8545 -p $(PORT):30303 \
		ethereum/client-go

.PHONY: attach
attach:
	@docker exec -it $(CONTAINER_NAME) geth attach ipc:/root/.ethereum/$(NETWORK_NAME)/geth.ipc

