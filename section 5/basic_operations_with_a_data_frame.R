# Run load_demographic_dataset.R first
source("load_demographic_dataset.R")

# Subsetting
demographicData[1:10,]
demographicData[3:8,]
demographicData[c(4,101),]

# Extracting

# If you extract one row from a matrix, it turns to a vector. 
# If you extract one row from a data frame, it stays as a data frame
is.data.frame(demographicData[1,]) # no need for drop=F

# But if you extract a column from a data frame, it turns to a vector
is.data.frame(demographicData[,1, drop=F]) # need for drop=F

# Math operations in columns
demographicData$Birth.rate * demographicData$Internet.users
demographicData$Birth.rate + demographicData$Internet.users

# Add column
demographicData$MyCalc <- demographicData$Birth.rate * demographicData$Internet.users
head(data)

demographicData$xyz <- 1:5 # recycles
head(data, n=12)

# Remove column
demographicData$MyCalc <- NULL
demographicData$xyz <- NULL
head(demographicData)