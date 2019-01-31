build:
	docker build --file=./Dockerfile --tag=gapminder-05 .

run: build
	docker run -d -p 8787:8787 \
		-e DISABLE_AUTH=true \
		--name='gapminder-05-ct' \
		-v ${HOME}:/home/rstudio/hostdata \
		gapminder-05;

	sleep 3;
	firefox 127.0.0.1:8787;

stop:
	docker stop gapminder-05-ct

start:
	docker start gapminder-05-ct

remove: stop
	docker rm gapminder-05-ct


