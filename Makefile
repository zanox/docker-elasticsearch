all: build

build:
	docker build -t es .

run:
	docker run --rm -it es bash

start: stop
	docker run -d --name es -p 9200:9200 es

stop:
	@docker rm -vf es ||:

push:
	docker tag -f es zanox/elasticsearch
	docker push zanox/elasticsearch

.PHONY: all build run start stop push
