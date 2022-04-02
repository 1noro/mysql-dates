all: help

help:
	@echo "Usage: make [target]"
	@echo "Available targets:"
	@echo " up-madrid"
	@echo " up-utc"
	@echo " down"

up-madrid:
	@TIMEZONE="Europe\/Madrid" \
	TIMEZONE_SLUG=eurpe-madrid \
	DOCKER_BUILDKIT=1 COMPOSE_DOCKER_CLI_BUILD=1 docker-compose up --build

up-utc:
	@TIMEZONE=UTC \
	TIMEZONE_SLUG=utc \
	DOCKER_BUILDKIT=1 COMPOSE_DOCKER_CLI_BUILD=1 docker-compose up --build

down:
	@docker-compose down
