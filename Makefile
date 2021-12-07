build:
	docker build -t zerosuxx/deployer .

build-and-push-amd64:
	docker buildx build --platform linux/amd64 -t zerosuxx/deployer --push .

build-and-push-arm64:
	docker buildx build --platform linux/arm64 -t zerosuxx/deployer --push .

build-and-push-all: build-and-push-amd64 build-and-push-arm64

sh:
	docker run --rm -it -v $(PWD)/:/app -w /app zerosuxx/deployer

push:
	docker push zerosuxx/deployer

scripts:
	ls bin/