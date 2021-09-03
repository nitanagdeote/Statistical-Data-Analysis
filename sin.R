#plot sine wave
points <-  seq(-pi,pi,by=0.1) ;points
index<-1:length(points)
index 
sin_x <-sin(points);sin_x
df <- data.frame(index,sin_x)
head(df)
pl1 <- ggplot(df,aes(x=index,y=sin_x))
pl1 +geom_point()
