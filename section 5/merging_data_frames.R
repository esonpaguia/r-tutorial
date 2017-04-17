# Run building_data_frames.R first
source("building_data_frames.R")

library("ggplot2")
library("rstudioapi")

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

data <- read.csv("DemographicData.csv")

head(data)
head(mydf)

merged <- merge(data, mydf, by.x= "Country.Code", by.y = "Code")
head(merged)

merged$Country <- NULL

str(merged)

# Retrive the levels
levels(merged$Region)
