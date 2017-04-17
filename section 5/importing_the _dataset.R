
# Select the file manually
data <- read.csv(file.choose())
data

# Set working directory and read data

# Windows
#setwd("C:\\Users\\Eson\\github\\rtutorial")

# Mac 
# setwd("/Users/eddisonpaguia/github/rtutorial")

# Rstudio only but you have to save the file first
library("rstudioapi")
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

getwd()

rm(data)
data <- read.csv("DemographicData.csv")
data