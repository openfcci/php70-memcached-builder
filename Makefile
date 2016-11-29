all: push

build:
	docker build -t apache24-php70 .

tag: build
	docker tag apache24-php70 fccorg/apache24-php70

push: tag
	docker push fccorg/apache24-php70
