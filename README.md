# python-boilerplate-project

A python boilerplate project using poetry

## Technology and Resources

- [Python 3.9](https://www.python.org/downloads/release/python-390/) - **pre-requisite**
- [Docker](https://www.docker.com/get-started) - **pre-requisite**
- [Docker Compose](https://docs.docker.com/compose/) - **pre-requisite**
- [Poetry](https://python-poetry.org/) - **pre-requisite**
- [Flake8](https://flake8.pycqa.org/en/latest/)
- [Black](https://black.readthedocs.io/en/stable/)

*Please pay attention on **pre-requisites** resources that you must install/configure.*

## How to install, run and test

Command | Docker | Locally | Description
---- | ------- | ------- | -------
install | `make docker/install` | `make local/install` | to install
tests | `make docker/tests` | `make local/tests` | to run the tests with coverage
lint | `make docker/lint` | `make local/lint` | to run static code analysis using flake8 and black
lint/fix | `make docker/lint/fix` | `make local/lint/fix` | to fix files using black code formatter
run | `make docker/run` | `make local/run` | to run the project

**Helpful commands**

*Please, check all available commands in the [Makefile](Makefile) for more information*.
