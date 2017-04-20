library(rstudioapi)
library(ggplot2)

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

source("load_movie_ratings_dataset.R")

p <- ggplot(data=movieData, aes(x=BudgetMillions))
h <- p + geom_histogram(binwidth = 10, aes(fill=Genre), color="Black")
h

# Add axes label
h + xlab("Money Axis")
h + ylab("Number of Movies")

?theme

# Format label
h + xlab("Money Axis") + 
  ylab("Number of Movies") +
  theme(axis.title.x = element_text(color="DarkGreen", size=30),
        axis.title.y = element_text(color="Red", size=30),
        axis.text.x = element_text(size=20),
        axis.text.y = element_text(size=20))

# Format legend
h + xlab("Money Axis") + 
  ylab("Number of Movies") +
  theme(axis.title.x = element_text(color="DarkGreen", size=30),
        axis.title.y = element_text(color="Red", size=30),
        axis.text.x = element_text(size=20),
        axis.text.y = element_text(size=20),
        legend.title = element_text(size=30),
        legend.text = element_text(size=20),
        legend.position = c(1,1),
        legend.justification = c(1,1))

# Put title
h + xlab("Money Axis") + 
  ylab("Number of Movies") +
  ggtitle("Movie Budget Distribution") + 
  theme(axis.title.x = element_text(color="DarkGreen", size=30),
        axis.title.y = element_text(color="Red", size=30),
        axis.text.x = element_text(size=20),
        axis.text.y = element_text(size=20),
        legend.title = element_text(size=30),
        legend.text = element_text(size=20),
        legend.position = c(1,1),
        legend.justification = c(1,1),
        plot.title = element_text(color="DarkBlue",
                                  size=40,
                                  family="Courier"))
