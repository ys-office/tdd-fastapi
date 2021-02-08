#! /bin/bash

docker build -f project/Dockerfile.prod -t docker.pkg.github.com/ys-office/fastapi-tdd-docker/summarizer:latest ./project
docker login docker.pkg.github.com -u ys-office -p ###TOKEN###
docker push docker.pkg.github.com/ys-office/fastapi-tdd-docker/summarizer:latest
