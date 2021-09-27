# Graph fn and gn big O notation
n<-c(1:10) ; n
f_n <- 2*n^2;f_n
g_n <- n^3 ; g_n
df<-data.frame(f_n,g_n) ; df
library(ggplot2)

pl1 <- ggplot(df,aes(x=n,y=f_n)) + geom_point()+geom_line()
pl1 

ggplot()+
  geom_line(data=df,mapping=aes(x=n,y=g_n),color='blue')+
  geom_line(data=df,mapping=aes(x=n,y=f_n),color='orange') +
  labs (x='n' , y = 'Time Complexity' , title = 'f_n , g_n Plot')
