FROM python:3.9-slim-buster

RUN apt-get update && apt-get install -y dnsutils

COPY docker_entrypoint.sh DRipper.py headers.txt /app/

WORKDIR /app

RUN chmod +x ./docker_entrypoint.sh

ENTRYPOINT ["./docker_entrypoint.sh"]
