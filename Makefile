all: run

build:
	docker build -t php70-memcached-builder .
run: build
	docker-compose up && docker-compose down

upload: tag
	docker push fccorg/php70-memcached-builder

tag: build
	docker tag php70-memcached-builder fccorg/php70-memcached-builder
