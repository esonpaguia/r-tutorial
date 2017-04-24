# Crosscut - BEGIN
library(rstudioapi)
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
getwd()
source("load_movie_ratings_dataset.R")
# Crosscut - END

library(ggplot2)

ggplot(data=movieData, aes(x=CriticRating, y=AudienceRating))

# Add geom
ggplot(data=movieData, aes(x=CriticRating, y=AudienceRating)) + 
  geom_point()

# Add color
ggplot(data=movieData, aes(x=CriticRating, y=AudienceRating, color=Genre)) + 
  geom_point()

# Add size
ggplot(data=movieData, aes(x=CriticRating, y=AudienceRating, color=Genre, size=Genre)) + 
  geom_point()

# Add size - better way
ggplot(data=movieData, aes(x=CriticRating, y=AudienceRating, color=Genre, size=BudgetMillions)) + 
  geom_point()

