# One sample t-test
# marks of students
# test the hypotehsis that "marks did not go below 70" 
test_data <- c(50,52,55,66,69,70,72,74,67,68,59,77,80)
mean <- mean(test_data)
t.test(test_data)
t.test(test_data,mu=70,alternative = c('less'))
t.test(test_data,mu=70,alternative = c('greater'))
t.test(test_data,mu=70,alternative = c('two.sided'))
t.test(test_data,mu=70,alternative = c('two.sided'),conf.level = .99)

# Two sample test
test_data2 <- c(60,67,65,77,88,99,85,84,90,63,73,83,93)
mean(test_data2)
t.test(test_data,test_data2)
t.test(test_data,test_data)
