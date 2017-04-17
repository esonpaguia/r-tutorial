# Run CountryRegionVectors.R first

library("ggplot2")
library("rstudioapi")

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

data <- read.csv("DemographicData.csv")

qplot(data = data, x=Internet.users, y=Birth.rate)
qplot(data = data, x=Internet.users, y=Birth.rate, size=I(4))
qplot(data = data, x=Internet.users, y=Birth.rate, size=I(4), color=I("red"))

qplot(data = data, x=Internet.users, y=Birth.rate, 
      size=I(4),
      color=Income.Group)
