source("load_movie_ratings_dataset.R")

library(ggplot2)

p <- ggplot(data=movieData, aes(x=CriticRating, y=AudienceRating, color=Genre, size=BudgetMillions))

# Point
p + geom_point()

# Line
p + geom_line()

# Multiple layers
p + geom_point() + geom_line()
p + geom_line() + geom_point() 
