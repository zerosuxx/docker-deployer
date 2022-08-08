build:
	docker build --target full -t zerosuxx/deployer:latest .

build-base:
	docker build --target base -t zerosuxx/deployer:base .

buildx-and-push:
	docker buildx build --target full --platform linux/amd64,linux/arm64 -t zerosuxx/deployer:latest --push .

buildx-and-push-base:
	docker buildx build --target base --platform linux/amd64,linux/arm64 -t zerosuxx/deployer:base --push .

sh:
	docker run --rm -it -v $(PWD)/:/app -w /app zerosuxx/deployer:latest

push:
	docker push zerosuxx/deployer:latest

scripts:
	ls bin/