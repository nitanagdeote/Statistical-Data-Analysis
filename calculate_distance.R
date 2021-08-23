# Calculate distance of a point
#Add noise to the data
x <-c(1:10,6.5)
y=c(x[1:10]^2,55)
mdf<-data.frame(x,y)
length(x)
length(y)
library(ggplot2)
#install.packages("tidyverse")
library(tidyverse)
#Calculate the distance
dist_sq = (mdf$x-mdf$y)^2
sum_dist=sum(dist)
R=sqrt(dist_sq/sum_dist)+rnorm(10)
R_new=y+R
mdf<-data.frame(x,y,R)
p=ggplot()+
  geom_line(data = mdf, aes(x = x, y = y), color = "blue") +
  geom_line(data = mdf, aes(x = x, y =R_new), color = "red") 
print(p)
