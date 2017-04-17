# Run load_demographic_dataset.R first
source("load_demographic_dataset.R")

library("ggplot2")

qplot(data = demographicData, x=Internet.users, y=Birth.rate)
qplot(data = demographicData, x=Internet.users, y=Birth.rate, size=I(4))
qplot(data = demographicData, x=Internet.users, y=Birth.rate, size=I(4), color=I("red"))

qplot(data = demographicData, x=Internet.users, y=Birth.rate, 
      size=I(4),
      color=Income.Group)
