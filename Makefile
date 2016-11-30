all: run

build:
	docker build -t php70-memcached-builder .
run: build
	docker-compose up && docker-compose down
