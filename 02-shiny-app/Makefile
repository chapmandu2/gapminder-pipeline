build:
	docker build --file=./Dockerfile --tag=gapminder-02 .

run: build
	docker run -d -p 8787:8787 -p 3838:3838 \
		-e DISABLE_AUTH=true \
		--name='gapminder-02-ct' \
		-v ${HOME}:/home/rstudio/hostdata \
		gapminder-02;

	sleep 3;
	firefox 127.0.0.1:8787;
	firefox 127.0.0.1:3838/users/rstudio;
	
stop:
	docker stop gapminder-02-ct

start:
	docker start gapminder-02-ct

remove: stop
	docker rm gapminder-02-ct
	
deploy: build
	docker run -d -p 9001:3838 \
		-e DISABLE_AUTH=true \
		--name='gapminder-02-deploy' \
		gapminder-02;

	sleep 3;
	firefox 127.0.0.1:9001/users/rstudio/plot-app/;
	
stop-deploy:
	docker stop gapminder-02-deploy;
	docker rm gapminder-02-deploy;


