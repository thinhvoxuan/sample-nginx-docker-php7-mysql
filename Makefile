VERSION = 1.0

.PHONY: dev_up

dev_up:
	docker-compose up -d --remove-orphans

down:
	docker-compose down

dev_up_build:
	docker-compose up --build -d

ps:
	docker-compose ps

logs:
	docker-compose logs

stop:
	docker stop $$(docker ps -a -q)

delete:
	docker rm $$(docker ps -a -q)
