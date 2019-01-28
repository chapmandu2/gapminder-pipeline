build:
	docker build --file=./Dockerfile --tag=gapminder-03 .

run: build
	docker run -d -p 8787:8787 \
		-e DISABLE_AUTH=true \
		--name='gapminder-03-ct' \
		-v ${HOME}:/home/rstudio/hostdata \
		gapminder-03;

	sleep 3;
	firefox 127.0.0.1:8787;

stop:
	docker stop gapminder-03-ct

start:
	docker start gapminder-03-ct

remove: stop
	docker rm gapminder-03-ct
	
deploy: build
	docker run -d -p 8000:8000 \
		-e DISABLE_AUTH=true \
		-e API_SCRIPT=basic-test-api.R \
		--name='gapminder-03-deploy' \
		gapminder-03 Rscript /plumber/plumber-apis/deploy.R;

	sleep 3;
	firefox 127.0.0.1:8000/echo/msg='hello world';
	
stop-deploy:
	docker stop gapminder-03-deploy;
	docker rm gapminder-03-deploy;



