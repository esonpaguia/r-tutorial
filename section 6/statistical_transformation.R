source("load_movie_ratings_dataset.R")

library(ggplot2)

# Smoother
p <- ggplot(data=movieData, aes(x=CriticRating, y=AudienceRating, color=Genre))
p + geom_point() + geom_smooth(fill=NA)

# Boxplots
rm(p)
p <- ggplot(data=movieData, aes(x=Genre, y=AudienceRating, color=Genre))
p + geom_boxplot() 
p + geom_boxplot(size=1.2) 

p + geom_boxplot(size=1.2) + geom_point() # ugly
p + geom_boxplot(size=1.2) + geom_jitter() # hack

# Another way
p + geom_jitter() + geom_boxplot(size=1.2, alpha=0.5)


rm(p)
p <- ggplot(data=movieData, aes(x=Genre, y=CriticRating, color=Genre))
p + geom_jitter() + geom_boxplot(size=1.2, alpha=0.5)