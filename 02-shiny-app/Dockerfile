FROM rocker/verse:3.5.2

# add shiny server
RUN export ADD=shiny && bash /etc/cont-init.d/add

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

################
# configure shiny server
################

COPY ./shiny-server.conf /etc/shiny-server/shiny-server.conf
COPY ./plot-app /home/rstudio/ShinyApps/plot-app/
RUN chown -hR rstudio:rstudio /home/rstudio/ShinyApps
