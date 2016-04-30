
build:
	docker build --tag fabiosantoscode/benfica:latest benfica
	docker build --tag fabiosantoscode/proxy:latest proxy

push:
	docker push fabiosantoscode/benfica:latest
	docker push fabiosantoscode/proxy:latest

run:
	docker run --rm -i --name=benfica_makefile_devel --publish=8080:8080 fabiosantoscode/benfica:latest

stop:
	docker ps --filter=name=benfica_makefile_devel -aq | \
		xargs --no-run-if-empty docker stop --time=0

watch:
	./node_modules/.bin/nodemon --exec "make stop && make build && make run"

