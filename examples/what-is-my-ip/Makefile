docker-dev-build:
	docker build -t example-for-tor:dev -f ./Dockerfile.dev .

docker-dev-run:
	docker run -it --rm \
		-p 3000:3000 \
		-v .:/app \
		example-for-tor:dev bash

start:
	npm start

docker-push:
	docker build -t example-for-tor:$(tag) -f ./Dockerfile.prod .
	docker image tag example-for-tor:$(tag) hardandheavy/example-for-tor:$(tag)
	docker push hardandheavy/example-for-tor:$(tag)
	docker image tag example-for-tor:$(tag) hardandheavy/example-for-tor:latest
	docker push hardandheavy/example-for-tor:latest

pure-test:
	docker run -it --rm \
		-p 3000:3000 \
		hardandheavy/example-for-tor:latest

tor-test:
	docker compose up
