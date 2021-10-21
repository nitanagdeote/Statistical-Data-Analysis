#Binomial distribution
# experiment : probability of getting 5 heads or less when flip a coin 10 times
visualize.binom(5,10,0.5)
# experiment : flippping one coin 10 times
rbinom(10,1,0.5)
# experiment : flippping 10 coin 10 times
rbinom(10,10,0.5)
mean(rbinom(1000,10,0.5))
