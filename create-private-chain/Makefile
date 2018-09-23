DIRNAME := "eth-private-chain"
CONTAINER_NAME := "eth-private-node"
NETWORK_NAME := "net99"
RPC_PORT := 8545
PORT := 30303

all: pull create build

# Create directonary and copy build.sh & genesis.json
create:
	@cd ~ && \
	mkdir $(DIRNAME)  && \
	cp $(PWD)/build.sh $(PWD)/genesis.json $(HOME)/$(DIRNAME)
.PHONY: create

# Pull docker images
pull:
	@if test ! -z $(docker images -q ethereum/client-go:latest); then \
		@docker pull ethereum/client-go; \
	else \
		echo "\033[0;32methereum/client-go:latest image is exist.\033[0m"; \
	fi
.PHONY: pull

# Build container by ethereum/client-go
build:
	@docker run -d --entrypoint "/root/build.sh" \
		--name $(CONTAINER_NAME) \
		-v $(HOME)/$(DIRNAME):/root \
		-p $(RPC_PORT):8545 -p $(PORT):30303 \
		ethereum/client-go
.PHONY: build

# Execute geth
attach:
	@docker exec -it $(CONTAINER_NAME) geth attach ipc:/root/.ethereum/$(NETWORK_NAME)/geth.ipc
.PHONY: attach

# Clean directonary
clean:
	rm -rf $(HOME)/$(DIRNAME)
.PHONY: clean
