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
# pde
q <- makeFun(x^2 + y^3 ~ x&y)
q
qx <- D(q(x,y) ~ x)
qx(5,6)

qy <- D(q(x,y) ~ y)
qy(2,3)

#######################################
# Double Derivative

sand <- makeFun(sin(x) ~ x)
sand
plotFun(sand(x) ~ x , x.lim=range(0,50))
####################################
