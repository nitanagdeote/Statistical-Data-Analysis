n <- 1000
weight<- rnorm(n,100,20)
weight_new <- c(weight,rep(120,20)) 
#normal
mean(weight_new)
sd(weight_new)
plot(weight_new)
######################
table(weight_new)
hist(weight_new)
tab<- tabulate(weight_new)
length(tab)
length(weight_new)
plot(tab,main = 'frequency plot') # frequency plot
################
# probability
prob <- tab/n
#sum of probability = 1
sum(prob)
plot(tab/n,main='probability plot')
