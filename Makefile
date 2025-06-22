all: run

update:
	scp .env ali:/root/wewe-rss

run:
	git pull
	docker-compose -f docker-compose.prod.yaml up -d --build
