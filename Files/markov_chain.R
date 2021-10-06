# Find the individual probability of state 
data <- c(0.2,0.6,0.2,0.3,0,0.7,0.5,0,0.5);data
length(data)
A <- matrix(data,nrow=3,ncol=3,byrow=TRUE)
###########################
# probability of each state

pi_0 <- matrix(c(0,1,0),nrow=1,ncol=3,byrow=TRUE)
pi_0
# matrix multiplication
pi_1 <- pi_0%*%A;pi_1
pi_2 <- pi_1%*%A;pi_2
pi_3 <- pi_2%*%A;pi_3
pi_4 <- pi_3%*%A ; pi_4
pi_5 <- pi_4%*%A ; pi_5
pi_6 <- pi_5%*%A ; pi_6
pi_7 <- pi_6%*%A ; pi_7
pi_8 <- pi_7%*%A ; pi_8
pi_9 <- pi_8%*%A ; pi_9
pi_10 <- pi_9%*%A ; pi_10
pi_11 <- pi_10%*%A ; pi_11
pi <- pi_11; pi
###################################
pi%*%A
#pi*A=pi 
# pi is left eigen vector of matrix A

#############################
total_prob <- pi[1,1]+pi[1,2]+pi[1,3] ; total_prob

####################################3

###################################################
# Take probability for burger
pi_01 <- matrix(c(1,0,0),nrow=1,ncol=3,byrow=TRUE)
pi_01
# matrix multiplication
pi_1 <- pi_01%*%A;pi_1
pi_2 <- pi_1%*%A;pi_2
pi_3 <- pi_2%*%A;pi_3
pi_4 <- pi_3%*%A ; pi_4
pi_5 <- pi_4%*%A ; pi_5
pi_6 <- pi_5%*%A ; pi_6
pi_7 <- pi_6%*%A ; pi_7
pi_8 <- pi_7%*%A ; pi_8
pi_9 <- pi_8%*%A ; pi_9
pi_10 <- pi_9%*%A ; pi_10
pi_11 <- pi_10%*%A ; pi_11
pi <- pi_11; pi
###################################
pi%*%A

################################
#To do in the future
for(i in 0:10){
  if(i=0){
    pi[0]= pi_0
    pi[i] <- pi[i]%*%A
  }
}
