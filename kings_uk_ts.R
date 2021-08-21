 #The Time Series Data Library (TSDL) was created by Rob Hyndman, Professor of Statistics at Monash University, Australia.
devtools::install_github("FinYang/tsdl")
library(tsdl)
library(forecast)
tsdl[[1]]
autoplot(tsdl[[1]])
subset(tsdl,"Sales")
################################################
kings <- scan("http://robjhyndman.com/tsdldata/misc/kings.dat",skip=3)
head(kings)
kingstimeseries <- ts(kings)
kingstimeseries
plot.ts(kingstimeseries)
