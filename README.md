# Census Data in R

This workshp provides an introduciton to working with census data in R using the `tidycensus` package. 

## Description

Since 1790, the US Census has been THE source of data about American people, providing valuable insights to social scientists and humanists. Mapping these data by census geographies adds more value by allowing researchers to explore spatial trends and outliers. This workshop will introduce three key packages for streamlining census data workflows in R: tigris, tidycensus and tmap. Participants will learn how to download census tabular data for one or more geographic aggregation units or years, download the associated census geographic data and then join these data for analysis and mapping. 

Specifically, we will:

- Describe the primary Census data products
- Introduce the R tidycensus package for working with Census Data
- Use that packages to fetch decennial and ACS census data
- Use those packages to fetch census geograpic boundary files
- Make maps of census data, symbolizing the color of those maps by the data values

### Knowledge Requirements: 

R experience equivalent to the D-Lab R Fundamentals workshop series is required to follow along with the tutorial. Basic knowledge of census data and geospatial data will be very helpful. 

### Tech Requirements:

Bring a laptop with R, RStudio and the following R packages installed: sp, sf, rgdal, rgeos, raster, ggplot2, and tmap, tigris and tidycensus.


You can download the repo and work through the tutorial by following along with the slides:

 - https://dlab-berkeley.github.io/Census-Data-in-R/Rcensus_data_maps-slides.html#1

## R Packages to install

Here are the R packages you will need for this workshop:

- tidyverse
- ggplot2
- sf
- tidycensus 
- tigris
- mapview


## Requesting a Census API key

The tidycensus package, and any R package that accesses the Census APIs, requires you to first get a Census API key

Get one now if you don’t have one yet here: (just takes a minute): https://api.census.gov/data/key_signup.html
