
all: build

build:
	docker build -t orchard/base .

test: build-test run-test

build-test:
	docker build -t orchard/base-test ./test

run-test:
	docker run -v /var/run/docker.sock:/run/docker.sock -ti orchard/base-test
