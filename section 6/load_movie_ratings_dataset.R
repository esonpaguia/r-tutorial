library(rstudioapi)

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

movieData <- read.csv("movie_ratings.csv")

# Change column names
colnames(movieData) <- c("Film", "Genre", "CriticRating", "AudienceRating", "BudgetMillions", "Year")