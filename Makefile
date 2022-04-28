help:
	@echo "Please use 'make <target>' where <target> is one of the following:"
	@echo "  dep                                to install project dependencies."
	@echo "  pre-commit                         to run the pre-commit checks."

install:
	poetry install

dep:
	pip install -r requirements.txt
	poetry install --no-interaction --no-root

pre-commit:
	poetry run pre-commit run --all-files

commit:
	poetry run cz commit
