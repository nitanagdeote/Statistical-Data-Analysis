library(visualize)
#visualize normal distribution
visualize.norm(-2) # Area to the left of z value -2
visualize.norm(-3) 
visualize.norm(c(3,-3),section='tails') #default is lower means left
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
