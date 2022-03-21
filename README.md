# Census Data in R

This workshop provides an introduction to working with census data in R using the `tidycensus` package. 

## Description

Since 1790, the US Census has been THE source of data about American people, providing valuable insights to social scientists and humanists. Mapping these data by census geographies adds more value by allowing researchers to explore spatial trends and outliers. This workshop will introduce three key packages for streamlining census data workflows in R: `tigris`, `tidycensus`, and `tmap`. Participants will learn how to download census tabular data for one or more geographic aggregation units or years, download the associated census geographic data, and then join these data for analysis and mapping. 

Specifically, we will:

- Describe the primary Census data products
- Introduce the R `tidycensus` package for working with Census Data
- Use that packages to fetch decennial and ACS census data
- Use those packages to fetch census geographic boundary files
- Make maps of census data, symbolizing the color of those maps by the data values

### Knowledge Requirements: 

R experience equivalent to the D-Lab R Fundamentals workshop series is required to follow along with the tutorial. Basic knowledge of census data and geospatial data will be very helpful. 

### Tech Requirements:

Bring a laptop with R, RStudio and the following R packages listed below installed.

You can download the repo and work through the tutorial by following along with the slides:

 - https://dlab-berkeley.github.io/Census-Data-in-R/Rcensus_data_maps-slides.html#1

## R Packages to install

Here are the R packages you will need for this workshop:

- `tidyverse`
- `ggplot2`
- `sf`
- `tidycensus` 
- `tigris`
- `mapview`
- `leaflet`

## Is R not working on your laptop? 

If you have a Berkeley CalNet ID, you can run these lessons on UC Berkeley's DataHub by clicking [![Datauhb](https://img.shields.io/badge/launch-datahub-blue)](https://datahub.berkeley.edu/hub/user-redirect/git-pull?repo=https%3A%2F%2Fgithub.com%2FAverysaurus%2FCensus-Data-in-R-1&urlpath=rstudio%2F&branch=master). By using this link, you can save your work and come back to it at any time. When you want to return to your saved work, just go straight to DataHub (https://datahub.berkeley.edu), sign in, and you click on the `Census-Data-in-R` folder.


## Requesting a Census API key

The `tidycensus` package, and any R package that accesses the Census APIs, require you to first get a Census API key. Get one now if you don’t have one yet here: (just takes a minute): https://api.census.gov/data/key_signup.html

---
<div style="display:inline-block;vertical-align:middle;">
<a href="https://dlab.berkeley.edu/" target="_blank">
<img src ="https://dlab.berkeley.edu/sites/default/files/logo.png" width="60" align="left" border=0 style="border:0; text-decoration:none; outline:none">
</a>
</div>
<div style="display:inline-block;vertical-align:middle;align:left">
    <div style="font-size:larger">D-Lab @ University of California - Berkeley
    </br>
    <a href="https://dlab.berkeley.edu" target="_blank">https://dlab.berkeley.edu</a>
    </br>
    &nbsp;
    </div>
</div>
