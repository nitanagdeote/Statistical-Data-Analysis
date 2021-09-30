#mean,median,table,sort
student.height <- c(100,106,121,111,109,111,103,117,114)
mean(student.height)
student.height1 <- c(100,106,121,111,109,111,103,117,114,NA,1047)
mean(student.height1,na.rm=TRUE,trim=0.1) 
# remove 10 % from the top and from the bottom
median(student.height)
sort(student.height)
table(student.height)
a <- table(student.height)
a
sort(a)
sort(a,decreasing = T)
sort(a,decreasing = T)[1]
#############################################
# Range, IQR(interquartile range), Standard deviation
range(student.height)
quantile(student.height)
IQR(student.height)
# sample standard deviation
sd(student.height)
length(student.height)

# population standard deviation
n<-length(student.height)
sd(student.height)*sqrt((n-1)/n)





