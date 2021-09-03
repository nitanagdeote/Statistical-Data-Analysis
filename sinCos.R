#plot sine and cos 
points <-  seq(-pi,pi,by=0.1) ;points
index<-1:length(points)
index 
sin_x <-sin(points);sin_x
cos_x <-cos(points);cos_x
df <- data.frame(index,sin_x,cos_x)
head(df)
pl1 <- ggplot(df,aes(x=cos_x,y=sin_x))
pl1 +geom_area()
pl1+geom_point()
