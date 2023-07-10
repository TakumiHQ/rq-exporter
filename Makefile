test:
	python -m unittest

build:
	docker build -t rq-exporter .

dev:
	docker compose up

clean:
	docker compose down -v

takumi-build:
	docker build -t takumiengineers/rq-exporter:v2.1.0 .
	docker push takumiengineers/rq-exporter:v2.1.0

.PHONY: test build dev clean
