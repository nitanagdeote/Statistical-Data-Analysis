#Binomial distribution
# experiment : probability of getting 5 heads or less when flip a coin 10 times
visualize.binom(5,10,0.5)
# experiment : flippping one coin 10 times
rbinom(10,1,0.5)
# experiment : flippping 10 coin 10 times
rbinom(10,10,0.5)
mean(rbinom(1000,10,0.5))
#The graph shows x-axis number of successes, y-axis shows probability
qbinom(0.5,10,0.5)
qbinom(0.8,10,0.5)
# result of qbinom() is q which is a critical value
#dbinom() to give vertical value of probability
dbinom(x=5,size=10,0.5)
#gives probability of number of success = 5, 
#total 10 coins flips,
#probability of each trial = 0.5

# Same value can be calculated using pbinom
pbinom(5,10,0.5)-pbinom(4,10,0.5)
# pbinom()gives value on the left of the number of successes
