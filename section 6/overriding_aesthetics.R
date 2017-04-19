source("load_movie_ratings_dataset.R")

library(ggplot2)

p <- ggplot(data=movieData, aes(x=CriticRating, y=AudienceRating, color=Genre, size=BudgetMillions))

# Add geom layer
p + geom_point()

# Overriding aesthetics, but it keeps the old names
p + geom_point(aes(size=CriticRating)) # overrides the size
p + geom_point(aes(color=BudgetMillions)) # overrides the color
p + geom_point(aes(x=BudgetMillions)) # overrides x
p + geom_point(aes(x=BudgetMillions)) + xlab("Budget Millions $$$") # changing x-axis label
p + geom_line(size=1) + geom_point() 
