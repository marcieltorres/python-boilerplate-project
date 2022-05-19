APP_NAME="python-boilerplate-project"

################################
# COMMANDS TO RUN LOCALLY
################################

local/install:
	poetry install

local/tests:
	poetry run pytest --cov-report=html --cov-report=term --cov . 

local/run:
	poetry run python src/main.py


############################################
# COMMANDS TO RUN USING DOCKER (RECOMMENDED)
############################################

docker/install:
	docker-compose build ${APP_NAME}

docker/up:
	docker-compose up -d

docker/down:
	docker-compose down --remove-orphans

docker/test:
	docker-compose run ${APP_NAME} poetry run pytest --cov-report=html --cov-report=term --cov .

docker/run:
	docker-compose run ${APP_NAME} poetry run python src/main.py