# Crosscut - BEGIN
library(rstudioapi)
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
getwd()
source("load_movie_ratings_dataset.R")
# Crosscut - END

library(ggplot2)

p <- ggplot(data=movieData, aes(x=CriticRating, y=AudienceRating, color=Genre, size=BudgetMillions))
p + geom_point()

# Add color
p + geom_point(aes(color=Genre)) # 1. via Mapping
p + geom_point(color="DarkGreen") # 2. via Setting
p + geom_point(aes(color="DarkGreen")) # Wrong. R thinks you are referring to a variable you created

# Add size
p + geom_point(aes(size=BudgetMillions)) # 1. via Mapping
p + geom_point(size=10) # 2. via Setting
p + geom_point(aes(size=10)) # Wrong
