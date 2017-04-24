# Crosscut - BEGIN
library(rstudioapi)
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
getwd()
source("load_movie_ratings_dataset.R")
# Crosscut - END

library(ggplot2)

# Histogram
p <- ggplot(data=movieData, aes(x=AudienceRating))
p + geom_histogram(binwidth = 10, fill="White", color="Blue")

# Another way: More flexible
p <- ggplot(data=movieData)
p + geom_histogram(binwidth = 10, aes(x=AudienceRating), fill="White", color="Blue") # same as above. You can change x anytime. You can't recreate the p variable

p + geom_histogram(binwidth = 10, aes(x=CriticRating), fill="White", color="Blue")

# Skeleton plot. You can pass the dataset
p <- ggplot()
