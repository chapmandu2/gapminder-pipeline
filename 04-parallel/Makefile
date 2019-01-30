build:
	docker build --file=./Dockerfile --tag=gapminder-04 .

run: build
	docker run -d -p 8787:8787 \
		-e DISABLE_AUTH=true \
		--name='gapminder-04-ct' \
		-v ${HOME}:/home/rstudio/hostdata \
		gapminder-04;

	sleep 3;
	firefox 127.0.0.1:8787;

stop:
	docker stop gapminder-04-ct

start:
	docker start gapminder-04-ct

remove: stop
	docker rm gapminder-04-ct


