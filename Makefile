
build:
	docker build --tag fabiosantoscode/benfica:latest benfica
	docker build --tag fabiosantoscode/proxy:latest proxy

push:
	docker push fabiosantoscode/benfica:latest
	docker push fabiosantoscode/proxy:latest

deploy: build push
	ecs-cli compose service up --deployment-min-healthy-percent 0

undeploy:
	ecs-cli compose service down

run: build
	docker-compose up

stop:
	docker ps --filter=name=benfica -aq | \
		xargs --no-run-if-empty docker stop --time=0
	docker ps --filter=name=proxy -aq | \
		xargs --no-run-if-empty docker stop --time=0

watch:
	./node_modules/.bin/nodemon \
		--exec "make stop && make build && make run" \
		--ext js,json,

