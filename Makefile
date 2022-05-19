################################
# COMMANDS TO RUN LOCALLY
################################

local/install:
	poetry install

local/tests:
	poetry run pytest --cov-report=html --cov-report=term --cov . 

local/run:
	poetry run python src/main.py