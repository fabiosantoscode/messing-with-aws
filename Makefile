
build:
	docker build --tag fabiosantoscode/benfica:latest benfica

run:
	docker run --rm -i --name=benfica_makefile_devel --publish=8080:8080 fabiosantoscode/benfica:latest

stop:
	docker ps --filter=name=benfica_makefile_devel -aq | \
		xargs --no-run-if-empty docker stop --time=0

watch:
	./node_modules/.bin/nodemon --exec "make stop && make build && make run"

