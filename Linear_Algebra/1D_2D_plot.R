# To make a function
# install packages mosaic
library(mosaic)
#Basic square function
# 1 Dimesion
g <- makeFun(x^2 ~ x)
plotFun(g(x)~x)

#######################################################
# 2 Dimension
g_x_y <- makeFun(x^2+y^2 ~ x & y)
plotFun(g_x_y(x,y) ~ x & y ,x.lim = range(-2,2),y.lim = range(-2,2))

#################################################
