# Derivatives and partial derivatives
library(mosaic)
library(mosaicCalc)
#######################################
g = D(x^2 ~ x)
g(2)
g
########################
h <- D(sin(abs(x-3)) ~ x)
h
h(2)
#####################################
f <- makeFun(x^3 ~ x)
f
f(3)
df <- D(f(x) ~ x)
df
df(4)
######################################
#function with a constant

cF <- D(A*sin(2*pi*t/P)+C ~ t)
cF(5)
cF(t=3,A=4,P=4,C=9)
plotFun(cF(t,A=2,P=4,C=2)~ t, t.lim=range(0,20))
###################################################
