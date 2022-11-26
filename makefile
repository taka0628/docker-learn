NAME := docker-test

build:
	docker image build -t ${NAME} .

