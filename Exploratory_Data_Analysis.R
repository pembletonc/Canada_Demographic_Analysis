library(tidyverse)
library(CANSIM2R)
library(devtools) #devtools::install_github("mountainmath/cancensus")
library(cancensus)

#first must set API Key from censusmapper

#Sys.setenv(CM_API_KEY = "your key")
#options(cancensus.cache_path = ("."))

Toronto_2016 <- get_census(dataset='CA16', regions=list(PR="35"),
                          vectors=c("v_CA16_401","v_CA16_2208","v_CA16_2209"),
                          level='CSD', use_cache = FALSE, geo_format = NA)

#vector list: v_CA16_401 = 2016 total population; v_CA16_2207 - median total income; v_CA16_2208 - median total income (male), v_CA16_2209 - median total income (female)

#https://doodles.mountainmath.ca/blog/2017/09/14/income-a-first-look/

View(list_census_vectors("CA16"))
View(list_census_regions("CA16"))





