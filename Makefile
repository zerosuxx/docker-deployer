build:
	docker build -t zerosuxx/deployer .

sh:
	docker run --rm -it zerosuxx/deployer

push:
	docker push zerosuxx/deployer

scripts:
	ls bin/