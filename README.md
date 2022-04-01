# Census Data in R

This workshop provides an introduction to working with census data in R using the `tidycensus` package.

## Description

Since 1790, the US Census has been THE source of data about American people, providing valuable insights to social scientists and humanists. Mapping these data by census geographies adds more value by allowing researchers to explore spatial trends and outliers. This workshop will introduce `tidycensus`, an important and powerful R package for streamlining census data workflows. Participants will learn how to download census tabular data for one or more geographic tabulation units and/or years, download the associated census geographic data, and use these data for analysis and mapping.

Specifically, we will:

-   Describe the primary Census data products
-   Introduce the R `tidycensus` package for working with Census Data
-   Use that packages to fetch decennial and ACS census data
-   Use those packages to fetch census geographic boundary files
-   Make maps of census data, symbolizing the color of those maps by the data values

### Knowledge Requirements:

R experience equivalent to the D-Lab R Fundamentals workshop series is required to follow along with the tutorial. Basic knowledge of census data and geospatial data will be very helpful.

### Tech Requirements:

Bring a laptop with R, RStudio and the following R packages listed below installed.

## R Packages to install

Here are the R packages you will need for this workshop:

-   `tidyverse`
-   `ggplot2`
-   `sf`
-   `tidycensus`
-   `tigris`
-   `mapview`
-   `leaflet`

## Is R not working on your laptop?

If you have a Berkeley CalNet ID, you can run these lessons on UC Berkeley's DataHub by clicking [![Datauhb](https://img.shields.io/badge/launch-datahub-blue)](https://datahub.berkeley.edu/hub/user-redirect/git-pull?repo=https%3A%2F%2Fgithub.com%2Fdlab-berkeley%2FCensus-Data-in-R&urlpath=rstudio%2F&branch=master). By using this link, you can save your work and come back to it at any time. When you want to return to your saved work, just go straight to DataHub (<https://datahub.berkeley.edu>), sign in, and you click on the `Census-Data-in-R` folder.

If you don't have a CalNet ID, you are able to access the workshop by clicking [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/dlab-berkeley/Census-Data-in-R/HEAD?urlpath=rstudio). This link takes a moment to load, so patience is required!

## Requesting a Census API key

The `tidycensus` package, and any R package that accesses the Census APIs, require you to first get a Census API key. Get one now if you don’t have one yet here: (just takes a minute): <https://api.census.gov/data/key_signup.html>

## Going Further with Geospatial Analysis

This workshop in mainly about using R to access US Census data in dynamic and efficient ways. We also explore data-centric mapping techniques to explore our queries over space. Is geospatial topics interest you and you'd like to study more, we recommed these resources as good starting points:

-   [Geospatial Fundamentals in R](https://github.com/dlab-berkeley/R-Geospatial-Fundamentals) - D-Lab workshop focusing on mapping and geospatial analysis in R.

-   [Leaflet for R](https://rstudio.github.io/leaflet/) - Well written introduciton to mapping with the `leaflet` package in R.

-   [Geocomputation in R](https://geocompr.robinlovelace.net/) - Textbook (Lovelace, Nowosad, and Muenchow, 2019) is an excellent resource for getting up and running.

-   [R Shiny Tutorials](https://shiny.rstudio.com/tutorial/) - `shiny` is an R package that makes it easy to build interactive web apps straight from R, incuding maps!

## Contributors

-   Patty Frontiera
-   Irene Farah
-   [Avery Richards](https://github.com/Averysaurus)

------------------------------------------------------------------------

<div style="display:inline-block;vertical-align:middle;align:left">
    <div style="font-size:larger">D-Lab @ University of California - Berkeley
    </br>
    <a href="https://dlab.berkeley.edu" target="_blank">https://dlab.berkeley.edu</a>
    </br>
    &nbsp;
    </div>
</div>
