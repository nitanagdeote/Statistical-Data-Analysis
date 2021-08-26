#The data for each major cities is based on the average (median) of several stations.
#The data set provides min, max, median and standard deviation for each of the air pollutant species (PM2.5,PM10, Ozone ...) 
#as well as meteorological data (Wind, Temperature, ...). All air pollutant species are converted to the US EPA standard (i.e. no raw concentrations). 
#All dates are UTC based. The count column is the number of samples used for calculating the median and standard deviation.
##############################################################################
#AIM : To find correlation between air quality and positive covid cases.
############################################################################
#Uploading the data
#air_covid_data<- read.csv("https://aqicn.org/data-platform/covid19/report/25402-58ef4529/2020",skip=4)
head(air_covid_data)
air_covid_data[1:10,]
no_of_rows<-nrow(air_covid_data)
#######################################
#Sample data
#install.packages("dplyr")  
library("dplyr")  
set.seed(12345)   
data_s1 <- sample_n(air_covid_data, 100)
data_s1[1:10,]
#head(data_s1)
#########################################
#The R-INLA package
#install.packages("INLA",repos = "https://inla.r-inla-download.org/R/stable", dep = TRUE)
#iid:	Independent and identically distributed Gaussian random effect.
library(INLA)
head(Surg)
prior.prec <- list(prec = list(prior = "pc.prec", param = c(1, 0.01)))
formula <- r ~ f(hospital, model = "iid", hyper = prior.prec)
#inla.doc("iid")
res <- inla(formula,
            data = Surg,
            family = "binomial", Ntrials = n,
            control.predictor = list(compute = TRUE),
            control.compute = list(dic = TRUE)
)

summary(res)
plot(res)
res$dic$dic
res$summary.fixed
res$summary.random
res$summary.hyperpar
res$summary.fitted.values
######################################################
library(ggplot2)
#Posterior distribution of parameter  
alpha <- res$marginals.fixed[[1]]
ggplot(data.frame(inla.smarginal(alpha)), aes(x, y)) +geom_line() +  theme_bw()
#FIGURE 4.2: Probability of parameter  
#α
#being lower than the 0.05 quantile.

quant <- inla.qmarginal(0.05, alpha)
quant
inla.pmarginal(quant, alpha)
ggplot(data.frame(inla.smarginal(alpha)), aes(x, y)) +
  geom_line() +
  geom_area(data = subset(data.frame(inla.smarginal(alpha)),
                          x < quant),
            fill = "black") +
  theme_bw()
# Posterior distribution of parameter  
#α
#at value -2.5.
inla.dmarginal(-2.5, alpha)
ggplot(data.frame(inla.smarginal(alpha)), aes(x, y)) +
  geom_line() +
  geom_vline(xintercept = -2.5, linetype = "dashed") +
  theme_bw()
