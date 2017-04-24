# Crosscut - BEGIN
library(rstudioapi)
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
getwd()
source("load_movie_ratings_dataset.R")
# Crosscut - END

library(ggplot2)

# Histogram
p <- ggplot(data=movieData, aes(x=BudgetMillions))
p + geom_histogram(binwidth = 10)

# Add color
p + geom_histogram(binwidth = 10, fill = "Green")
p + geom_histogram(binwidth = 10, aes(fill=Genre))
p + geom_histogram(binwidth = 10, aes(fill=Genre), color="Black")

# Density chart
p + geom_density((aes(fill=Genre)))
p + geom_density(aes(fill=Genre), position = "stack")
