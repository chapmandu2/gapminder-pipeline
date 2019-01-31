FROM rocker/verse:3.5.2

################
#install linux deps
################

RUN apt-get update -y && \
	apt-get install -y \ 
		curl \
		libzmq3-dev

################
#install R packages
################

RUN R -e "install.packages(c('gapminder', 'future', 'furrr', 'clustermq'))"
RUN R -e "remotes::install_github('ropensci/drake')"