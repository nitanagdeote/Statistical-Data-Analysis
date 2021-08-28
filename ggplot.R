#ggplot charcteristic layers
library(ggplot2)
head(mtcars)
summary(mtcars)
nrow(mtcars)
#data,aesthetics,geometry
ggplot(data=mtcars,aes(x=mpg,y=hp))+geom_point()
# iris data set
head(iris)
p<- ggplot(data=iris,aes(x=Sepal.Width,y=Petal.Width))
p+geom_point() +facet_grid( Species~ .)
##data,aesthetics,geometry,facet,statistics,co-ordinates,theme

p1<-ggplot(data=mtcars,aes(x=mpg,y=hp))
p2<-p1+geom_point()+facet_grid(cyl ~ .)+stat_smooth()

p2+coord_cartesian(xlim=c(15,25)) +theme_bw()
