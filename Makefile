all: run

update:
	scp .env ali:/root/wewe-rss

run:
	git pull
	docker-compose -f docker-compose.prod.yml up -d --build

restart:
	# if .env change , restart
	docker-compose -f docker-compose.prod.yml up -d --force-recreate
