IMAGE_NAME := "neighborhood999/ethereum-with-solidity:1.0.0"
CONTAINER_NAME := "ethereum-private-node"
NETWORK_NAME := "net99"
RPC_PORT := 8545
PORT := 30303

all: build run

# Build docker images
build:
	@if docker image inspect $(IMAGE_NAME) > /dev/null 2>&1; then \
		echo "\033[0;32m$(IMAGE_NAME) image is exist.\033[0m"; \
	else \
		docker build -t $(IMAGE_NAME) .; \
	fi
.PHONY: build

# Running container
run:
	@docker run -d \
		--name $(CONTAINER_NAME) \
		-v $(PWD)/.ethereum:/root/.ethereum\
		-p $(RPC_PORT):8545 -p $(PORT):30303 \
		--rm \
		$(IMAGE_NAME)
.PHONY: run

# geth attch
attach:
	@docker exec -it $(CONTAINER_NAME) geth attach ipc:/root/.ethereum/$(NETWORK_NAME)/geth.ipc
.PHONY: attach

# solc
solc:
	@docker exec -it ethereum-private-node /bin/sh
.PHONY: solc

# Clean directonary
clean:
	rm -rf $(PWD)/.ethereum
.PHONY: clean
