build:
	docker build -t zerosuxx/deployer .

push:
	docker push zerosuxx/deployer

scripts:
	ls bin/