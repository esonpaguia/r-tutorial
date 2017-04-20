source("load_movie_ratings_dataset.R")

library(ggplot2)

p <- ggplot(data=movieData, aes(x=BudgetMillions))
p + geom_histogram(binwidth = 10, aes(fill=Genre),
                   color="Black")

# Facets for histogram

p + geom_histogram(binwidth = 10, aes(fill=Genre),
                   color="Black") +
  facet_grid(Genre~.,scale="free")

# Facets for scatterplots
rm(p)
p <- ggplot(data=movieData, aes(x=CriticRating, 
                                y=AudienceRating, 
                                color=Genre))

p + geom_point(size=3)
p + geom_point(size=3) + facet_grid(Genre~.)
p + geom_point(size=3) + facet_grid(.~Year)
p + geom_point(size=3) + facet_grid(Genre~Year)
p + geom_point(size=3) + geom_smooth() + 
  facet_grid(Genre~Year)
p + geom_point(aes(size=BudgetMillions) + 
                 geom_smooth() + 
                 facet_grid(Genre~Year)