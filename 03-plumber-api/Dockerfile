FROM rocker/verse:3.5.2

################
#install linux deps
################

RUN apt-get update -y && \
	apt-get install -y \ 
		curl

################
#install R packages
################

RUN R -e "install.packages(c('gapminder'))"

###############
# configure plumber
################
RUN R -e "install.packages(c('plumber'))"

COPY ./plumber-apis /plumber/plumber-apis


