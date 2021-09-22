numbers <- rnorm(1500, mean=600, sd=110)
data <- data.frame('x'=numbers) 
ggplot(data, aes(x=x)) +
  geom_density(alpha=0.1, fill='green') +
  geom_vline(xintercept = 0)
#How often value of 0 occur in distribution
dnorm(0)
# Where did half of the values occur
qnorm(0.5)
# How many outcomes were at or below 0
pnorm(0)
