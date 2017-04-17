library("rstudioapi")

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

data <- read.csv("DemographicData.csv")

# Subsetting
data[1:10,]
data[3:8,]
data[c(4,101),]

# Extracting

# If you extract one row from a matrix, it turns to a vector. 
# If you extract one row from a data frame, it stays as a data frame
is.data.frame(data[1,]) # no need for drop=F

# But if you extract a column from a data frame, it turns to a vector
is.data.frame(data[,1, drop=F]) # need for drop=F

# Math operations in columns
data$Birth.rate * data$Internet.users
data$Birth.rate + data$Internet.users

# Add column
data$MyCalc <- data$Birth.rate * data$Internet.users
head(data)

data$xyz <- 1:5 # recycles
head(data, n=12)

# Remove column
data$MyCalc <- NULL
data$xyz <- NULL
head(data)