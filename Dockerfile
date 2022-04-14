FROM python:3.8-slim-buster
RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y libpq-dev
RUN pip install --upgrade pip
RUN pip install poetry

# Requirements are installed here to ensure they will be cached.
COPY ./ /app/test_package_template
# All imports needed for autodoc.

WORKDIR /app/test_package_template

COPY ./poetry.lock ${WORKDIR}/poetry.lock
COPY ./pyproject.toml ${WORKDIR}/pyproject.toml
RUN poetry config virtualenvs.create false
RUN poetry install --no-interaction

RUN rm -rf /app/test_package_template


ENTRYPOINT ["run"]
