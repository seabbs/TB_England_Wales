## Start with the tidyverse docker image
FROM rocker/tidyverse:latest

MAINTAINER "Sam Abbott" contact@samabbott.co.uk

RUN export ADD=shiny && bash /etc/cont-init.d/add

ADD . /home/rstudio/TB_England_Wales

ADD . /srv/shinyapps/TB_England_Wales


RUN Rscript -e 'devtools::install_github("rstudio/flexdashboard")'

RUN Rscript -e 'devtools::install_github("seabbs/tbinenglanddataclean")'

RUN Rscript -e 'install.packages("DT")'