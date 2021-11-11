#
library(ggplot2)
library(stringr)
d <- read.csv('/home/nita/Downloads/02b. cmm541coursework (1).csv')
head(d)
summary(d)
##################
new_data <- na.omit(d)
summary(new_data)
head(new_data)

dim(new_data)
################
new_data %>% 
  ggplot(aes(x=strength)) +
  geom_bar() +
  labs(title = 'Category Variable Distribution') +
  theme(axis.text.x = element_text(angle=45))
#####################
a <- nrow(new_data)/2
new_data_half <- new_data[1:a,]
nrow(new_data_half)  
new_data_half$strength <- factor(new_data_half$strength)
new_data_half$split_word <-str_extract_all(new_data_half$password,boundary("character"))
head(new_data_half)
new_data_half$length_password <- str_count(new_data_half$password)
#str_detect(x1,"[[:upper:]]")
new_data_half$upper <- str_detect(new_data_half$password,"[[:upper:]]")
new_data_half$upper_factor <- factor(new_data_half$upper )
new_data_half$lower <- str_detect(new_data_half$password,"[[:lower:]]")
new_data_half$lower_factor <- factor(new_data_half$lower )
new_data_half$is_number <- grepl("[-]?[0-9]+[.]?[0-9]*|[-]?[0-9]+[L]?|[-]?[0-9]+[.]?[0-9]*[eE][0-9]+",new_data_half$password)
new_data_half$is_number_factor <- factor(new_data_half$is_number)
