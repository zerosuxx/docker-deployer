build:
	docker build -t zerosuxx/deployer .

build-and-push-all:
	docker buildx build --platform linux/amd64,linux/arm64 -t zerosuxx/deployer --push .

sh:
	docker run --rm -it -v $(PWD)/:/app -w /app zerosuxx/deployer

push:
	docker push zerosuxx/deployer

scripts:
	ls bin/