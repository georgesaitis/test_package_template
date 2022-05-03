help:
	@echo "Please use 'make <target>' where <target> is one of the following:"
	@echo "  dep                                to install project dependencies."
	@echo "  install                            to install the packages needed."
	@echo "  install-no-venv                    to install the packages needed without creating a virtual environment."
	@echo "  install-as-library                 to install the packages needed and the project as a Python package."
	@echo "  pre-commit                         to run the pre-commit checks."
	@echo "  commit                    			to commit your changes using commitizen for help with the commit message."
	@echo "  test-coverage                      to test code coverage."
	@echo "  coverage-report                    to print the test coverage report."
	@echo "  build-documentation       	        to build Sphinx documentation."

dep:
	pip install -r requirements.txt

install:
	poetry install --no-interaction --no-root

install-no-venv:
	poetry config virtualenvs.create false
	make install

install-as-library:
	poetry install --no-interaction

pre-commit:
	poetry run pre-commit run --all-files

commit:
	poetry run cz commit

test-coverage:
	poetry run coverage run -m --source=my_package/ unittest

coverage-report:
	poetry run coverage report

build-documentation:
	poetry run sphinx-build -b html docs/ docs/_build/html -a

build-markdown-documentation:
	poetry run sphinx-build -b markdown docs/ docs/_build/markdown -a

build-confluence-documentation:
	poetry run sphinx-build -b confluence docs/ docs/_build/confluence -a -D confluence_server_user=$(ATLASSIAN_USER) -D confluence_server_pass=$(ATLASSIAN_API_KEY)

