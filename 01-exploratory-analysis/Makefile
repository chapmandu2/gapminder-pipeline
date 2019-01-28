build:
	docker build --file=./Dockerfile --tag=gapminder-01 .

run: build
	docker run -d -p 8787:8787 \
		-e DISABLE_AUTH=true \
		--name='gapminder-01-ct' \
		-v ${HOME}:/home/rstudio/hostdata \
		gapminder-01;

	sleep 3;
	firefox 127.0.0.1:8787;

stop:
	docker stop gapminder-01-ct

start:
	docker start gapminder-01-ct

remove: stop
	docker rm gapminder-01-ct


