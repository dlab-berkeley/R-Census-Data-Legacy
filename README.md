# Census Data in R

This workshp provides an introduciton to working with census data using the `tidycensus` R packages. 

Specifically, we will:

- Describe the primary Census data products
- Introduce the R tidycensus package for working with Census Data
- Use that packages to fetch decennial and ACS census data
- Use those packages to fetch census geograpic boundary files
- Make maps of census data, symbolizing the color of those maps by the data values

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
