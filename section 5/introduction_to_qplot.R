# Run load_demographic_dataset.R first
source("load_demographic_dataset.R")

library("ggplot2")

qplot(data = demographicData, x=Internet.users)
qplot(data = demographicData, x=Income.Group, y=Birth.rate)
qplot(data = demographicData, x=Income.Group, y=Birth.rate, size=I(3))
qplot(data = demographicData, x=Income.Group, y=Birth.rate, size=I(3),
      color=I("blue"))
qplot(data = demographicData, x=Income.Group, y=Birth.rate, geom="boxplot")