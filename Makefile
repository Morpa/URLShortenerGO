## up: starts all containers in the background without forcing build
up:
	@echo "Starting Docker images..."
	docker-compose up -d
	@echo "Docker images started!"

## down: stop docker compose
down:
	@echo "Stopping docker compose..."
	docker-compose down
	@echo "Done!"

## build_api: builds the api binary as a linux executable
build_api:
	@echo "Building api binary..."
	go build && ./rss_aggregator 
	@echo "Done!"
