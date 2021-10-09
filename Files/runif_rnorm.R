library(ggplot2)
##############################
n=3000
run<-runif(n,min=-1,max=1)
head(run)
#qplot(run)
###################################
rn<-rnorm(n,mean=0,sd=1)
#qplot(rn)
#####################

par(mfrow=c(1,2))
plot(run,main="random uniform distributed numbers")
plot(rn,main='random normal distributed numbers')

######################################
