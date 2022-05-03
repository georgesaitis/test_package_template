FROM python:3.8-slim-buster
RUN apt-get update \
    && apt-get install --no-install-recommends -y build-essential=12.6 \
    && apt-get install --no-install-recommends -y libpq-dev=11.14-0+deb10u1 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app/my_package

COPY . .

RUN make dep \
 && make install-no-venv


ENTRYPOINT ["run"]
