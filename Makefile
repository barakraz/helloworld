VERSION=current
HOST=127.0.0.1

all: build deploy

build:
	docker build -t barakraz/helloworld .
	docker tag -force barakraz/helloworld $(HOST):5000/barakraz/helloworld:$(VERSION)

deploy:
	docker push $(HOST):5000/barakraz/helloworld:$(VERSION)
	./deploy-app barakraz/helloworld $(VERSION)
