#exponential function

n=100
x<-runif(n,min=-1,max=1)
#x
f<-exp(x)
plot(x,f)
################################
number=200
z<-complex(real = rnorm(number),imaginary = rnorm(number))
ex<-exp(z)
head(z)
#plot(z)
plot(ex)
head(ex)
plot(z,ex)

