library("rstudioapi")

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

data <- read.csv("DemographicData.csv")

nrow(data)
ncol(data)

head(data) # top, default to 6
tail(data) # bottom, default to 6

str(data) # structure

summary(data)