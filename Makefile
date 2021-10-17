build:
	docker build -t zerosuxx/deployer .

sh:
	docker run --rm -it -v $(PWD)/:/app -w /app zerosuxx/deployer

push:
	docker push zerosuxx/deployer

scripts:
	ls bin/