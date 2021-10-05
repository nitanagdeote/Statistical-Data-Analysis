# Monte Carlo integration
 f <- function(x) x^2
curve(f,from=-3,to=3) 
library(DescTools) 
Shade(f,breaks=c(-3,3),col='green')
grid()
##############################
# Calculate with formula
query_points<-runif(n=2000, min=-3,max=3)
6*mean(f(query_points))

######################################
# Calculation usin glarge number of points

area_estimates <- vector(length=10000)
for(i in 1:10000){
  query_points<-runif(n=2000, min=-3,max=3)
  area_estimates[i]= 6*mean(f(query_points))
  
}

plot(area_estimates)
abline(h=18,col='red',lwd=2)

