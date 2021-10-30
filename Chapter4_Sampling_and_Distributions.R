#Load a dataset in a csv file
pop <- read.csv("https://raw.githubusercontent.com/QMUL-SPIR/Public_files/master/datasets/census-historic-population-borough.csv")
###########################
# Summary of data
head(pop)
summary(pop)
names(pop)
nrow(pop)
################################
library(tidyverse)
#Subset dataset only to have years since 2000

pop_21 <- select(pop, Area.Code, Area.Name, Persons.2001, Persons.2011)
head(pop_21)
#Subset dataset only to have years since 2000, with 'snake case' names
#Subset dataset only to have years since 2000

pop_21 <- select(
  pop,
  area_name = Area.Name,
  area_code = Area.Code,
  persons_2001 = Persons.2001,
  persons_2011 = Persons.2011
)
head(pop_21)
#In this version of pop_21, the borough names appear before their codes. 
#The names of the variables are also now all in ‘snake case’, 

#########################################
summary(pop_21)
#Subset dataset only to have boroughs with over 200,000 population

pop_21_200k <- filter(
  pop_21,
  persons_2011 >= 200000 # greater than or equal to 200,000
)
head(pop_21_200k)
################################################
# pipe operator
# All the above steps can be tied together using pipe operator
# Apply all changes to dataset using pipe

pop_21_200k <- pop %>% # call the dataset 
  select( # keep only the variables we want, renaming them
    area_name = Area.Name,
    area_code = Area.Code,
    persons_2001 = Persons.2001,
    persons_2011 = Persons.2011) %>%
  filter( # keep only rows with 200,000+ population
    persons_2011 >= 200000) %>% 
  #mutate() adds new variables and preserves existing ones
  mutate( # create new variable of difference between 2011 and 2001
    persons_diff = persons_2011-persons_2001
  )
head(pop_21_200k)
###################################################
# Missing values or NA
library(naniar)
# load in quality of government data
qog <- read.csv("https://raw.githubusercontent.com/QMUL-SPIR/Public_files/master/datasets/QoG2012.csv")
head(qog)
table(qog$h_j)
nrow(qog)
# missing values
n_miss(qog$h_j)
#We can also work out how much data we do have on a given variable 
#by simply counting the number of valid entries using n_complete()
n_complete(qog$h_j)
#number of missings can also be expressed as proportions/percentages.
pct_miss(qog$h_j)
pct_complete(qog$h_j)
# when we delete a missing value from one variable, 
#we delete it for the entire row of the dataset
library(tidyr)
qog <- drop_na(qog, h_j)
##############
#recover original dataset

qog <- read.csv("https://raw.githubusercontent.com/QMUL-SPIR/Public_files/master/datasets/QoG2012.csv")
full_dataset <- qog
qog <- qog %>% drop_na(h_j)  # removing na using pipe operator
© 2021 GitHub, Inc.
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About
