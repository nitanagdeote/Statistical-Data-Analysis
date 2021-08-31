#This package provides R implementations of more advanced functions 
#in numerical analysis
#install.packages("pracma")
library(pracma)
library(ggplot2)
?pracma
######################################
n <- 101
x <- seq(0, pi, len = n)
head(x)
y <- sin(x)
trapz(x, y)
data <- data.frame(x=x,f=y)
head(data)
pl1 <- ggplot(data,aes(x,f) )
pl1+geom_point()
seq(1,10,len=2)
