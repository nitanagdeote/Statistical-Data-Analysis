library(forecast)
fit <- ets(USAccDeaths)
plot(forecast(fit))
head(USAccDeaths)
