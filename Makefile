.DEFAULT_GOAL := help

RUN_ARGS := $(wordlist 2, $(words $(MAKECMDGOALS)), $(MAKECMDGOALS))

.PHONY: build
build:
	nixpacks build . --name bedrock

.PHONY: up
up:
	docker-compose up

.PHONY: deploy
help:
	fly deploy --nixpacks

.PHONY: help
help:
	cat Makefile
