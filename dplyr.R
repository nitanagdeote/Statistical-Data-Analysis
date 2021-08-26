# dplyr 
# for data manipulation
# install.packages("dplyr")
#install.packages('nycflights13')
library('dplyr')
library('nycflights13')
head(flights)
head(airlines)
head(airports)
head(planes)
head(weather)
summary(flights)
head(flights$carrier)
# filter
head(filter(flights,month==11,day==3,carrier=='AA'))
#slice
slice(flights,1:3)
#arrange
head(arrange(flights,air_time))
head(arrange(flights,distance))
#descending
head(arrange(flights,desc(distance)))
