
Tuberculosis in England and Wales
=================================

Exploring public data on Tuberculosis in England and Wales using interactive dashboards. The dashboards rely on [tbinenglanddataclean](https://www.samabbott.co.uk/tbinenglanddataclean), which is an R package that contains cleaning scripts for private TB data and machine readable versions of public TB data for England (and Wales), along with graphing functions.

Currently one dashboard has been implemented exploring TB incidence and interventions over time, discover more [here](https://www.samabbott.co.uk/post/tb-england-wales/).

Running the dashboards locally
------------------------------

### Using docker

In order to avoid machine specific issues these dashboards were developed using docker, with a container based on the [tidyverse](https://hub.docker.com/r/rocker/tidyverse/) docker image. After installing docker run the docker image with,

``` bash
docker run -d -p 8787:8787 --name TB_in_England_Wales -e PASSWORD=TB_England_Wales seabbs/TB_in_England_Wales
```

The rstudio client can be found on port `:8787` at `localhost`. The default username:password is rstudio:TB\_in\_England\_Wales, set the user with `-e USER=username`, and the password with `- e PASSWORD=newpasswordhere`. The default is to save the analysis files into the user directory. For more instructions on using docker see the [tidyverse](https://hub.docker.com/r/rocker/tidyverse/) docker image.

### Manual install

To install and run the shiny app locally on your own computer you will need to first install [R](https://www.r-project.org/), it is also suggested that you install [Rstudio](https://www.rstudio.com/products/rstudio/download/). After downloading the source code from [this repository](https://www.github.com/seabbs/TB_in_England_Wales) click on the `TB_in_England_Wales.Rprof` file, this will open an Rstudio window. Type the following code into the command line;

``` r
install.packages("shiny")
install.packages("devtools")
install.packages("DT")
install.packages("tidyverse")
install.packages("rmarkdown")
install.packages("plotly")

devtools::install_github("rstudio/flexdashboard")
devtools::install_github("seabbs/tbinenglanddataclean")
```

To run an app open the app file (i.e. `TB_incidence_interventions.Rmd`) and press run, depending on your computer this may take some time.
