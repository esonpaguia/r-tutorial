library("ggplot2")
library("rstudioapi")

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

data <- read.csv("DemographicData.csv")

?qplot
qplot(data = data, x=Internet.users)
qplot(data = data, x=Income.Group, y=Birth.rate)
qplot(data = data, x=Income.Group, y=Birth.rate, size=I(3))
qplot(data = data, x=Income.Group, y=Birth.rate, size=I(3),
      color=I("blue"))
qplot(data = data, x=Income.Group, y=Birth.rate, geom="boxplot")
