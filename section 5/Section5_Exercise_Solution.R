library("rstudioapi")

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

source("Section5_Exercise_Vectors.R")

# Import the dataset
data <- read.csv("Section5_Exercise_Dataset.csv")

# Explore the data
data
head(data)
tail(data, n=7)
str(data)
summary(data)

# Split the data frame into two
data1960 <- data[data$Year == 1960,]
data2013 <- data[data$Year == 2013,]

# Check row counts
nrow(data1960)
nrow(data2013)

#Create the additional dataframes
add1960 <- data.frame(Code=Country_Code, Life.Exp=Life_Expectancy_At_Birth_1960)
add2013 <- data.frame(Code=Country_Code, Life.Exp=Life_Expectancy_At_Birth_2013)

#Check summaries
summary(add1960)
summary(add2013)

#Merge the pairs of dataframes  
merged1960 <- merge(data1960, add1960, by.x="Country.Code", by.y="Code")
merged2013 <- merge(data2013, add2013, by.x="Country.Code", by.y="Code")

#Check the new structures
str(merged1960)
str(merged2013)

#We can see an obsolete column in each of the merged dataframes
#Column "Year" is no longer required. Let's remove it
merged1960$Year <- NULL
merged2013$Year <- NULL

library(ggplot2)

#Visualize the 1960 dataset
plot1960 <- qplot(data=merged1960, x=Fertility.Rate, y=Life.Exp,
   color=Region,
   size=I(5), 
   alpha=I(0.6),
   main="Life Expectancy vs Fertility (1960)"
)

#Visualize the 2013 dataset
plot2013 <- qplot(data=merged2013, x=Fertility.Rate, y=Life.Exp,
      color=Region,
      size=I(5), 
      alpha=I(0.6),
      main="Life Expectancy vs Fertility (2013)"
)

plot1960 + theme_bw() + theme(panel.border = element_blank(), 
                              panel.grid.major = element_blank(),
                              panel.grid.minor = element_blank(), 
                              axis.line = element_line(colour = "black"))

plot2013 + theme_bw() + theme(panel.border = element_blank(), 
                            panel.grid.major = element_blank(),
                            panel.grid.minor = element_blank(), 
                            axis.line = element_line(colour = "black"))