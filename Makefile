APP_NAME="python-boilerplate-project"

################################
# COMMANDS TO RUN LOCALLY
################################

local/install: generate-default-env-file
	poetry install

local/tests:
	poetry run pytest --cov-report=html --cov-report=term --cov . 

local/lint:
	poetry run flake8 .
	poetry run black --check .

local/lint/fix:
	poetry run black .

local/run:
	poetry run python src/main.py


############################################
# COMMANDS TO RUN USING DOCKER (RECOMMENDED)
############################################

docker/install: generate-default-env-file
	docker-compose build ${APP_NAME}

docker/up:
	docker-compose up -d

docker/down:
	docker-compose down --remove-orphans

docker/test:
	docker-compose run ${APP_NAME} poetry run pytest --cov-report=html --cov-report=term --cov .

docker/lint:
	docker-compose run ${APP_NAME} poetry run flake8 .
	docker-compose run ${APP_NAME} poetry run black --check .

docker/lint/fix:
	docker-compose run ${APP_NAME} poetry run black .

docker/run:
	docker-compose run ${APP_NAME} poetry run python src/main.py

##################
# HEPFUL COMMANDS
##################

generate-default-env-file:
	@if [ ! -f .env ]; then cp env.template .env; fi;