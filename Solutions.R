#---------------------------------------------------------------------
# Solutions: R Census Data Challenges & Questions
#---------------------------------------------------------------------

## Fill in the code to fetch State population in 2010 just for California
get_decennial(geography = "state",               # census tabulation unit
              variables = "P001001", # variable(s) of interest
              year = 2010,           # census year
              state="CA")           # Filter by state is CA


## fetch state pop in 2010 for CA, TX and FL
get_decennial(geography = "state",               # census tabulation unit
              variables = "P001001", # variable(s) of interest
              year = 2010,           # census year
              state=c("CA","FL","TX")  )         # Filter by state is CA, Fl or Tx


## fetch 2010 population for Alameda & San Francisco Counties
get_decennial(geography = "county",              # census tabulation unit
              variables = "P001001", # variable(s) of interest
              year = 2010,           # census year
              state='CA',            # Filter by state is CA
              county=c('Alameda','San Francisco') )  #Filter by county

#-----------------------------------------------------------
### Questions
## What 2010 decennial census variable contains...
#- `Median Age` =  "P013001"
#- `Average Family Size` = "P037001"
#- `Number of occupied housing units` =  'H003002'

#-----------------------------------------------------------
# Fetch Avg family size by CA County in 2010
ca_fam_size <- get_decennial(geography='county',
                            variables="P037001",
                            state='CA',
                            year=2010)

# Plot Avg family size by CA County 20210
ca_fam_size %>%
  ggplot(aes(x = value, y = reorder(NAME, value))) + 
  geom_point()

#-----------------------------------------------------------
# Load 2000 decennial census variables
vars2000 <- load_variables(year=2000, dataset = 'sf1', cache = T)

# Fetch Avg family size by CA County in 2000
ca_fam_size2000 <- get_decennial(geography='county',
                            variables='P033001',
                            state='CA',
                            year=2000)

# Plot Avg family size by CA County
ca_fam_size2000 %>%
  ggplot(aes(x = value, y = reorder(NAME, value))) + 
  geom_point()

#-----------------------------------------------------------

# Create a `map` of CA Median Age by county in 2010

## Fetch data + geometry for CA Median Age by county in 2010
ca_med_age <- get_decennial(geography = "county", 
                            variables = "P013001",
                            year = 2010, 
                            state='CA',
                            geometry=TRUE)

# map it with plot
plot(ca_med_age['value'])

# map it with ggplot - setting CRS to 3310
ca_med_age %>%
  ggplot(aes(fill = value)) + 
  geom_sf(color=NA) + 
  coord_sf(crs = 3310) + 
  scale_fill_viridis_c(option = "viridis") 

#-----------------------------------------------------------

# Median household rent for San Francisco County
#using data from the ACS 2015—2019 5-year product.
sf_medrent <- get_acs(geography="tract",
                        variables=c(median_rent2019="B25064_001"),
                        year =2019,
                        state="CA",
                        county=c("San Francisco"),
                        geometry=T)

# Map it with plot
plot(sf_medrent[!is.na(sf_medrent$estimate),]['estimate'])

# Map it with ggplot

sf_medrent %>%
  drop_na(estimate)  %>%
  ggplot(aes(fill = estimate)) + 
  geom_sf(color=NA) + 
  coord_sf(crs = 26910) +  # CRS for Northern CA - UTM 10 
  scale_fill_viridis_c(option = "magma") 
