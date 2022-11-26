.PHONY: help
SHELL := /bin/bash

help:
	@echo 'We should add info about the commands here'

build-cache:
	docker-compose build --no-cache django

build:
	docker-compose build django

up:
	docker-compose up -d django

down:
	docker-compose down django

down-v:
	docker-compose down -v

bash:
	docker-compose run --service-ports --rm django bash

ps:
	docker-compose ps

logs:
	docker-compose logs -f django

startapp:
	docker exec -it dev-django python manage.py startapp $(app)

makemigrations:
	docker exec -it dev-django python manage.py makemigrations

migrate:
	docker exec -it dev-django python manage.py migrate

createsuperuser:
	docker exec -it dev-django python manage.py createsuperuser
