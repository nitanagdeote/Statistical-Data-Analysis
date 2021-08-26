# Pipe Operator %>%
library(dplyr)
df<-mtcars
head(df)
head(mtcars)

result <- df %>% filter(mpg>24) %>% sample_n(size=3) %>% arrange(desc(mpg))
print(result)
