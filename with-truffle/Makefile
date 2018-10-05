all: build up

build:
	@docker-compose build
.PHONY: build

up:
	@docker-compose up --d
.PHONY: up

exec:
	@docker exec -it with-truffle_truffle_1 /bin/sh
.PHONY: exec

stop:
	@docker-compose stop
.PHONY: stop
