# Crosscut - BEGIN
library(rstudioapi)
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
getwd()
source("load_movie_ratings_dataset.R")
# Crosscut - END

head(movieData)

str(movieData)
levels(movieData$Genre)
summary(movieData)

# Convert non-factor variable to factor variable
movieData$Year <- factor(movieData$Year)
summary(movieData)
str(movieData)
levels(movieData$Year)
