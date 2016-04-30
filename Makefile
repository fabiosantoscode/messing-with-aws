
build:
	docker build --tag fabiosantoscode/benfica:latest benfica

run: build
	docker run --rm -i --publish=8080:8080 fabiosantoscode/benfica:latest

watch:
	nodemon --exec "make build && make run"

