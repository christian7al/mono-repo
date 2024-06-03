# Define environment variables
DOCKER_COMPOSE_FILE = docker-compose.yml
DOCKER_COMPOSE = docker-compose -f $(DOCKER_COMPOSE_FILE)

# Define default commands
build:
	@echo "Building Docker containers..."
	$(DOCKER_COMPOSE) build

up:
	@echo "Starting Docker containers..."
	$(DOCKER_COMPOSE) up -d

up-dependencies:
	@echo "Starting dependencies containers..."
	$(DOCKER_COMPOSE) up postgres redis -d

down:
	@echo "Stopping Docker containers..."
	$(DOCKER_COMPOSE) down

logs:
	@echo "Tailing logs from all services..."
	$(DOCKER_COMPOSE) logs -f

logs-backend:
	@echo "Tailing logs from the backend service..."
	$(DOCKER_COMPOSE) logs -f backend

ps:
	@echo "Listing all running containers..."
	$(DOCKER_COMPOSE) ps

restart:
	@echo "Restarting Docker containers..."
	$(DOCKER_COMPOSE) restart

clean:
	@echo "Cleaning up stopped containers and unused images..."
	$(DOCKER_COMPOSE) down --rmi all --volumes --remove-orphans

migrate:
	@echo "Running database migrations..."
	$(DOCKER_COMPOSE) run --rm backend yarn run typeorm migration:run

seed:
	@echo "Seeding the database..."
	$(DOCKER_COMPOSE) run --rm backend yarn run seed

start:
	@echo "Starting Docker containers without rebuilding..."
	$(DOCKER_COMPOSE) start

start-dependencies:
	@echo "Starting Docker dependencies containers without rebuilding..."
	$(DOCKER_COMPOSE) start postgres redis

.PHONY: build up down logs logs-backend ps restart clean migrate seed start
