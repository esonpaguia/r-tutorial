library("rstudioapi")

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

data <- read.csv("DemographicData.csv")

data[3,3]
data[3, "Birth.rate"]

# $ sign is used to access data inisde a data frame. It does NOT work in matrices
data$Birth.rate[3]

# These two are identical
data$Birth.rate
data[, "Birth.rate"]

# Retrive the levels
levels(data$Income.Group)
