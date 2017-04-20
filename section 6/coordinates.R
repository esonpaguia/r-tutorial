source("load_movie_ratings_dataset.R")

library(ggplot2)

a <- ggplot(data=movieData, aes(x=CriticRating, y=AudienceRating, size=BudgetMillions, color=Genre))
a + geom_point()

# Limit
a + geom_point() + xlim(50,100) + ylim(50,100)

# But it doesn't always work well
b <- ggplot(data=movieData, aes(x=BudgetMillions))
b + geom_histogram(binwidth = 10, aes(fill=Genre), color="Black")
b + geom_histogram(binwidth = 10, aes(fill=Genre), color="Black") + 
  ylim(0,50) # it drops/cut off some bars

# Instead, use zoom
b + geom_histogram(binwidth = 10, aes(fill=Genre), color="Black") + 
  coord_cartesian(ylim = c(0,50))

# Improve from "Using facets"
p <- ggplot(data=movieData, aes(x=CriticRating, 
                                y=AudienceRating, 
                                color=Genre))
p + geom_point(aes(size=BudgetMillions)) + 
                 geom_smooth() + 
                 facet_grid(Genre~Year) + 
                 coord_cartesian(ylim = c(0,100))
