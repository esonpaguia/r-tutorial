library("rstudioapi")

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

demographicData <- read.csv("DemographicData.csv")